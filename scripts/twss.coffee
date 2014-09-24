# That's what she said
#
# twss - Listen for some key phrases, and reply with that's what she said 
#



module.exports = (robot) ->
  robot.hear /(won't fit|doesn't fit|going to fit|can't fit|too small|too big|give that a wack)/i, (msg) ->
    msg.send "That's what she said"
