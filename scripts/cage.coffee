# Description:
#   When you say a pleasant word, you get a pleasant picture. 
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


cages = [
  "http://upload.wikimedia.org/wikipedia/commons/3/33/Nicolas_Cage_2011_CC.jpg",
  "http://upload.wikimedia.org/wikipedia/commons/c/c0/Nicolas_Cage_Deauville_2013.jpg"
]

module.exports = (robot) ->
  robot.hear /(awesome | great | amazing | love | beautiful | lovely | perfect)/i, (msg) ->
    msg.send 'You reminded me of...'
    msg.send msg.random cages

