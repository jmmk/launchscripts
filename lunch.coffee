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

days =
  1: "Monday"
  3: "Wednesday"

now = new Date().getDay()

module.exports = (robot) ->
  robot.respond /it\'?s lunch\s?time$/i, (msg) ->
    if now is 1 or now is 3
      msg.reply "It's #{days[now]}: Go to Chicken n' Rice Guys. Right now. Why are you still standing here?"
      msg.send "Or you could go to " + (msg.random lunch_options) + " I guess..."
    else
      msg.reply msg.random lunch_options
