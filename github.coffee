# Description
#   Displays a bad ass octocat every time you mention github
#
# Commands:
#   octocat - Display a random octocat picture.
#
# Author:
#   gjackson12
#

octocats = [
 "http://octodex.github.com/images/stormtroopocat.png",
 "http://octodex.github.com/images/daftpunktocat-thomas.gif",
 "http://octodex.github.com/images/foundingfather_v2.png",
 "http://octodex.github.com/images/octoliberty.png",
 "http://octodex.github.com/images/poptocat_v2.png",
 "http://octodex.github.com/images/gangnamtocat.png",
 "http://octodex.github.com/images/megacat-2.png",
 "http://octodex.github.com/images/heisencat.png",
 "http://octodex.github.com/images/strongbadtocat.png"
]

module.exports = (robot) ->
    robot.hear /octocat/i, (msg) ->
      msg.send msg.random octocats