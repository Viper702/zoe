# Description:
# Minions have taken control of hubot
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   minions - Random Minion Image
#
# Author:
#   thefynx

minions = require './data/minions/minions.json'

module.exports = (robot) ->
  robot.hear /(m|M)inion(s|)/i, (msg) ->
    msg.send msg.random minions

