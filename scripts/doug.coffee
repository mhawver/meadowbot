# Description:
#   Cage me. 
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
#  mhawver 


dougs = [
	"https://s3.amazonaws.com/uploads.hipchat.com/7413/37872/EjEenyowLJzQ5CB/doug.png"
]

module.exports = (robot) ->
  robot.hear /(dog|doug|douglas)/i, (msg) ->
    msg.send msg.random dougs

  robot.respond /dbomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    msg.send dougs for dougs in [1..count]

