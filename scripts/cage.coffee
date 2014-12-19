# Description:
#   Hello this is dog. 
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


dougs = [
	"https://s3.amazonaws.com/uploads.hipchat.com/7413/37872/EjEenyowLJzQ5CB/doug.png"
]

module.exports = (robot) ->
  robot.hear /(douglas | doug | dog )/i, (msg) ->
    msg.send msg.random dougs

