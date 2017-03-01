# Description:
# bot responds to violence or beatings upon itself.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   thefynx

badResponses = require './data/responses/bad.json'
goodResponses = require './data/responses/good.json'
awesomeResponses = require './data/responses/awesome.json'
abidesResponses = require './data/responses/abides.json'

module.exports = (robot) ->
  robot.hear /(kicks|hits|bad) (bot|hubot)/, (msg) ->
    msg.emote msg.random badResponses

  robot.hear /(pats|hugs|good) (bot|hubot)/, (msg) ->
    msg.emote msg.random goodResponses

  robot.hear /(awesome|way to go|good job)/, (msg) ->
    msg.emote msg.random awesomeResponses

  robot.hear /(dude abides|he abides|the dude|big lebowski)/, (msg) ->
    msg.send msg.random abidesResponses
