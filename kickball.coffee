module.exports = (robot) ->
    robot.hear /kickball/i, (msg) ->
      msg.reply "Kickball? Eric's team will destroy you."