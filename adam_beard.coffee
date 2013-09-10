# Description
#    Displays a picture of Adam with a beard
#
# Commands:
#   adam_beard - Displays a picture of Adam with a beard
#
# Author:
#   gjackson12
#

octocats = [
 "http://31.media.tumblr.com/4d12f5621a8e2875a72cf7388f94bc59/tumblr_msxbrkTXN71si87ilo1_1280.jpg",
 "http://25.media.tumblr.com/ecdd9780fdc45a8f09d3ecec246e3bd3/tumblr_mswy91BL5K1si87ilo1_500.png",
 "http://31.media.tumblr.com/8ba7a24cffc9f0ecc4bbbc6fbab93b69/tumblr_mswy8hOJn71si87ilo1_400.png"
]

module.exports = (robot) ->
    robot.hear /adam beard/i, (msg) ->
      msg.send msg.random octocats