# Description
#   Cures your lunchtime indecision.
#
# Commands:
#   hubot its lunchtime - Reply with a random lunch option.
#   hubot its lunchtime on monday/wednesday - Get to CnR ASAP.
#   alt. it's lunch time
#
# Author:
#   bencalegari
#

lunch_options = [
  "Five Guys",
  "Boloco",
  "Chipotle",
  "b.good",
  "Dumpling King",
  "Dumpling Cafe",
  "Boston Kitchen Pizza",
  "Four Burgers",
  "Al Capone",
  "Sa Pa",
  "Sam La Grassa's",
  "Figaro's",
  "Sebastians",
  "Bahn Mi"
]

module.exports = (robot) ->
  robot.respond /it\'?s lunch\s?time$/i, (msg) ->
    msg.reply msg.random lunch_options

  robot.respond /it\'?s lunch\s?time on (monday|wednesday)/i, (msg) ->
    msg.reply "Go to Chicken n' Rice Guys. Right now. Why are you still standing here?"