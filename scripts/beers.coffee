# Description:
#   Give, Take and List User Points
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot give <number> beers to <username> - award <number> beers to <username>
#   hubot give <username> <number> beers - award <number> beers to <username>
#   hubot take <number> beers from <username> - take away <number> beers from <username>
#   hubot how many beers does <username> have? - list how many beers <username> has
#   hubot take all beers from <username> - removes all beers from <username>
#
# Author:
#   brettlangdon
#

beers = {}

award_beers = (msg, username, pts) ->
    beers[username] ?= 0
    beers[username] += parseInt(pts)
    msg.send pts + ' Awarded To ' + username

save = (robot) ->
    robot.brain.data.beers = beers

module.exports = (robot) ->
    robot.brain.on 'loaded', ->
        beers = robot.brain.data.beers or {}

    robot.respond /give (\d+) beers to (.*?)\s?$/i, (msg) ->
        award_beers(msg, msg.match[2], msg.match[1])
        save(robot)

    robot.respond /give (.*?) (\d+) beers/i, (msg) ->
        award_beers(msg, msg.match[1], msg.match[2])
        save(robot)
    
    robot.respond /take all beers from (.*?)\s?$/i, (msg) ->
        username = msg.match[1]
        beers[username] = 0
        msg.send username + ' WHAT DID YOU DO?!'
        save(robot)

    robot.respond /take (\d+) beers from (.*?)\s?$/i, (msg) ->
         pts = msg.match[1]
         username = msg.match[2]
         beers[username] ?= 0
         
         if beers[username] is 0
             msg.send username + ' Does Not Have Any Beers To Take Away'
         else
             beers[username] -= parseInt(pts)
             msg.send pts + ' Beers Taken Away From ' + username

         save(robot)

    robot.respond /how many beers does (.*?) have\??/i, (msg) ->
        username = msg.match[1]
        beers[username] ?= 0

        msg.send username + ' Has ' + beers[username] + ' Points'
       
