# That's what she said
#
# twss - Listen for some key phrases, and reply with that's what she said 
#



module.exports = (robot) ->
  robot.hear /(won't fit|too big|doesn't fit|can't fit|too small)/i, (msg) ->
    msg.send "That's what she said"
