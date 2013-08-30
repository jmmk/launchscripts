  responses = [
    "Your son will be the next Tom Brady.",
    "I see a daughter in your future, not unlike Miley Cyrus."
  ]

  module.exports = (robot) ->
    robot.respond /will i ever have a son\?$/i, (msg) ->
      msg.reply msg.random responses