# Description
#   Sends a message to a channel or person
#
# Commands:
#   hubot announce destination | message - Sends message to destination user or channel
#
# Author:
#   jmmk
#

module.exports = (robot) ->
  robot.respond /announce (.*) | (.*)/i, (msg) ->
    # if msg.message.user.name == 'MichaelM'
      destination = { room: msg.match[1] }
      robot.send destination, msg.match[2]
    # else
      # msg.reply "announce: permission denied"