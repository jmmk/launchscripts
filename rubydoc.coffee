# Description
#   Finds a specific page in the Ruby online Documentation.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   rubydoc <class> - Reply with url of <class> in Ruby 2.0 Core Docs
#
# Notes:
#   None
#
# Author:
#   jmmk

  module.exports = (robot) ->
    robot.hear /rubydoc (.+)$/i, (msg) ->
      ruby_class = escape(msg.match[1])
      msg.send "http://www.ruby-doc.org/core-2.0.0/#{ruby_class}.html"