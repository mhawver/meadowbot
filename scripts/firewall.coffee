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


cannedResponse = [
	"http://i.imgur.com/XpuHCgq.jpg"
]

module.exports = (robot) ->
  robot.hear /(firewall|firewalls|can't connect|connection issue|connection issues|being blocked|connection refused|trouble connecting|connection trouble|timeout|timeouts)/i, (msg) ->
    msg.send msg.random cannedResponse
