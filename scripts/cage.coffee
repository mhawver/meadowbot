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
#   pmaterer


cages = [
  "http://upload.wikimedia.org/wikipedia/commons/3/33/Nicolas_Cage_2011_CC.jpg",
  "http://upload.wikimedia.org/wikipedia/commons/c/c0/Nicolas_Cage_Deauville_2013.jpg",
  "http://38.media.tumblr.com/961935ec3ec9094604924a4febff6583/tumblr_mzkqmzFssj1s57mjfo3_1280.jpg",
  "http://www.sickchirpse.com/wp-content/uploads/2012/06/Nicolas-Cage-Cats-Featured.jpg",
  "http://31.media.tumblr.com/b6404cf76b68121dcbc099e16983c745/tumblr_mn49ob2yht1r8u1k5o1_1280.jpg"
]

module.exports = (robot) ->
  robot.hear /(cageme | cage me)/i, (msg) ->
    msg.send msg.random cages

