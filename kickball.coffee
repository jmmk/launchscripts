# Description
#   Tells who the boss of kickball is
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   kickball - Reply with the greatest kickball team ever formed.
#
# Notes:
#   None
#
# Author:
#   jmmk

  module.exports = (robot) ->
      robot.hear /kickball/i, (msg) ->
        msg.reply "Kickball? Eric's team will destroy you."