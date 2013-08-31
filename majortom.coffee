# Description
#   Quotes Space Oddity lyrics
#
# Commands:
#   ground control to major tom - Reply with a stanza of David Bowie's Space Oddity
#
# Author:
#   jmmk
#

space_oddities = ["This is Major Tom to Ground Control
                  I'm stepping through the door
                  And I'm floating
                  in a most peculiar way
                  And the stars look very different today",

                  "For here
                  Am I sitting in a tin can
                  Far above the world
                  Planet Earth is blue
                  And there's nothing I can do",

                  "Though I'm past
                  one hundred thousand miles
                  I'm feeling very still
                  And I think my spaceship knows which way to go
                  Tell my wife I love her very much
                  she knows",

                  "Here am I floating
                  round my tin can
                  Far above the Moon
                  Planet Earth is blue
                  And there's nothing I can do."
                  ]

module.exports = (robot) ->
  robot.hear /ground control to major tom/i, (msg) ->
    msg.send msg.random space_oddities