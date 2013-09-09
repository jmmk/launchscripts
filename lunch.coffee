# Description
#   Cures your lunchtime indecision. 
#
# Commands:
#   hubot its lunchtime - Reply with a random lunch option.
#   hubot its lunchtime on monday/wednesday - Get the fuck to CnR ASAP. 
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
  "Bon Mi"
]

module.exports = (robot) ->
  robot.respond /its lunchtime$/i, (msg) ->
    msg.reply msg.random lunch_options    

  robot.respond /its lunchtime on monday/i, (msg) ->
    msg.reply "Go to Chicken n' Rice Guys. Right now. Why are you still standing here?"

  robot.respond /its lunchtime on wednesday/i, (msg) ->
    msg.reply "Go to Chicken n' Rice Guys. Right now. Why are you still standing here?"