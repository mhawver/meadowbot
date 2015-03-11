# Description:
#   Meadow bot helps with the firewall issues. 
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
  robot.hear /firewall+s?\b/i, (message) -> 
    message.send "http://i.imgur.com/XpuHCgq.jpg"
