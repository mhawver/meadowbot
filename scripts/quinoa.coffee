# Description:
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
#   pmaterer


module.exports = (robot) ->
  robot.hear /(quinoa)/i, (msg) ->
    msg.send "http://marcfbellemare.com/wordpress/wp-content/uploads/2013/01/RedQuinoa.jpg"
