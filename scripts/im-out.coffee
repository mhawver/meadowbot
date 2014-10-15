# Description:
#   Fuck this shit I'm out
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   I'm out 
#
# Author:
#   atmos

module.exports = (robot) ->
  robot.hear /(I'm out*|cash out)/i, (msg) ->
    msg.send "http://media.giphy.com/media/wGPxUGw6Q5JF6/giphy.gif"
