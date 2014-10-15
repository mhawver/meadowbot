# Description:
#   Convert issue IDs to jira links
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
  robot.hear /^GO-/i, (msg) ->
    msg.send 'https://jira.grubhubseamless.com/browse/(msg)'
