# Description:
#   A way to interact with the MBTA API
#
# Configuration:
#   HUBOT_MBTA_API_KEY
#
# Commands:
#   hubot mbta subway line station direction
#   e.g. hubot mbta red line downtown crossing southbound
#   valid directions are southbound, northbound, eastbound, westbound, outbound, inbound
#   valid subway lines are green, orange, blue, red
#
# Author:
#   jmmk
#

api_key = process.env HUBOT_MBTA_API_KEY

Array::unique = ->
  output = {}
  output[@[key]] = @[key] for key in [0...@length]
  value for key, value of output

module.exports = (robot) ->
  robot.respond /mbta (.*(line|rail)) (.*) (.*)/i, (msg) ->
    msg.send "WARNING: This script is in beta testing, do not trust output!"
    msg.send api_key
    directions = {
      'southbound': '0'
      'northbound': '1'
      'eastbound': '1'
      'westbound': '0'
      'outbound': '0'
      'inbound': '1'
    }

    direction = directions[msg.match[4].toLowerCase()]
    start_point = msg.match[3].toLowerCase()
    route_ids = []
    destination = []
    line = msg.match[1].toLowerCase()
    now = new Date()
    emit = ["The next trains will leave the station in:"]

    msg.http("http://realtime.mbta.com/developer/api/v1/routes?api_key=#{api_key}")
      .header('Accept', 'application/json')
      .get() (err, res, body) ->
        response = JSON.parse(body)
        for x in [0..2]
          for mode in response['mode'][x]['route']
            if mode['route_name'].toLowerCase().indexOf(line) isnt -1
              route_ids.push(mode['route_id'])

        delay = 0
        route_ids.forEach (id) ->
          getStopDelay = -> getStop msg, direction, start_point, id, destination, now, delay, emit
          setTimeout(getStopDelay, delay)
          delay += 100
        emitDelay = ->
          emit.unique().forEach (string) ->
            msg.send string
        setTimeout(emitDelay, 1500)

getStop = (msg, direction, start_point, id, destination, now, delay, emit) ->
  msg.http("http://realtime.mbta.com/developer/api/v1/stopsbyroute?api_key=#{api_key}&route=#{id}")
    .header('Accept', 'application/json')
    .get() (err, res, body) ->
      response = JSON.parse(body)
      for x in [0..response['direction'].length - 1]
        if response['direction'][x]['direction_id'] is direction
          for stop in response['direction'][x]['stop']
            if stop['stop_name'].toLowerCase().indexOf(start_point) isnt -1
              destination.push(stop['stop_id'], id)
              delay += 100
              getTripsDelay = -> getTrips msg, destination, now, emit
              setTimeout(getTripsDelay, delay)

getTrips = (msg, destination, now, emit) ->
  trains = []
  msg.http("http://realtime.mbta.com/developer/api/v1/schedulebystop?api_key=#{api_key}&stop=#{destination[0]}")#&route=#{destination[1]}")
    .header('Accept', 'application/json')
    .get() (err, res, body) ->
      response = JSON.parse(body)
      for route in response['mode'][0]['route']
        for trip in route['direction'][0]['trip']
          trains.push([parseInt(trip['sch_dep_dt']), trip['trip_name']])
        for train in trains
          emit.push("#{Math.round((train[0]*1000 - now) / 60000)} minutes")


