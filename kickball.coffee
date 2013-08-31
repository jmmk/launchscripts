# Description
#   Tells who the boss of kickball is
#
# Commands:
#   kickball - Reply with the greatest kickball team ever formed.
#
# Author:
#   jmmk
#

module.exports = (robot) ->
    robot.hear /kickball/i, (msg) ->
      msg.reply "Kickball? Eric's team will destroy you."