  module.exports = (robot) ->
    robot.hear /rubydoc (.+)$/i, (msg) ->
      ruby_class = escape(msg.match[1])
      msg.send "http://www.ruby-doc.org/core-2.0.0/#{ruby_class}.html"