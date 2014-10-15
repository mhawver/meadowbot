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
#	jira - listen for jira ticket numbers, respond with whole link
#
# Author:
#   mhawver

module.exports = (robot) ->
  robot.hear /^GO-/i, (msg) ->
    msg.send 'https://jira.grubhubseamless.com/browse/'(msg)
