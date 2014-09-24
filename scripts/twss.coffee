# Description:
#   Listen for some key phrases, and reply with that's what she said
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#	None
#
# Author:
#   mhawver


module.exports = (robot) ->
  robot.hear /(won't fit|doesn't fit|going to fit|can't fit|too small|too big|give that a wack|give it a wack|too large|too small)/i, (msg) ->
    msg.send "That's what she said (twss)"
