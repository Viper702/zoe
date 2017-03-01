# Description:
# SFW Reaction Script
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot react <reaction> - (fail|fangirling|excited|slowclap|freakout|success|bubble|micdrop|facepalm|high five|bye|smash|nailedit|sigh|seriously|dealwithit|thumbsup|sad|nope|dissapoint|impatient|guilty)
#
# Author:
#   thefynx

bubbles = require './data/reactions/bubbles.json'
excited = require './data/reactions/excited.json'
fail = require './data/reactions/fail.json'
freakout = require './data/reactions/freakout.json'
micdrop = require './data/reactions/micdrop.json'
bye = require './data/reactions/bye.json'
facepalm = require './data/reactions/facepalm.json'
fangirling = require './data/reactions/fangirling.json'
highfive = require './data/reactions/highfive.json'
success = require './data/reactions/success.json'
slowclap = require './data/reactions/slowclap.json'
smash = require './data/reactions/smash.json'
nailedit = require './data/reactions/nailedit.json'
sigh = require './data/reactions/sigh.json'
seriously = require './data/reactions/seriously.json'
dealwithit = require './data/reactions/dealwithit.json'
thumbsup = require './data/reactions/thumbsup.json'
sad = require './data/reactions/sad.json'
disappoint = require './data/reactions/disappoint.json'
impatient = require './data/reactions/impatient.json'
guilty = require './data/reactions/guilty.json'
nope = require './data/reactions/nope.json'

module.exports = (robot) ->
    robot.respond /react (fail)/i, (msg) ->
        msg.send msg.random fail

    robot.respond /react (fangirling)/i, (msg) ->
        msg.send msg.random fangirling

    robot.respond /react (excited|happy)/i, (msg) ->
        msg.send msg.random excited

    robot.respond /react (slowclap|clap|applause|slow clap)/i, (msg) ->
        msg.send msg.random slowclap

    robot.respond /react (freakout|scared)/i, (msg) ->
        msg.send msg.random freakout

    robot.respond /react (success|awesome)/i, (msg) ->
        msg.send msg.random success

    robot.respond /react (bubbles|bubble)/i, (msg) ->
        msg.send msg.random bubble

    robot.respond /react (micdrop|mic drop)/i, (msg) ->
        msg.send msg.random micdrop

    robot.respond /react (high five|high 5|high5|highfive|h5)/i, (msg) ->
        msg.send msg.random highfive

    robot.respond /react (facepalm|fp|oh no)/i, (msg) ->
        msg.send msg.random facepalm

    robot.respond /react (bye|later|see ya)/i, (msg) ->
        msg.send msg.random bye

    robot.respond /react (smash|hulk smash)/i, (msg) ->
        msg.send msg.random smash

    robot.respond /react (nailedit|nailed it)/i, (msg) ->
        msg.send msg.random nailedit

    robot.respond /react (sigh|bored)/i, (msg) ->
        msg.send msg.random sigh

    robot.respond /react (seriously|for real|are you kidding me|wtf)/i, (msg) ->
        msg.send msg.random seriously

    robot.respond /react (dealwithit|deal with it|deal)/i, (msg) ->
        msg.send msg.random dealwithit

    robot.respond /react (thumbsup|thumbs up)/i, (msg) ->
        msg.send msg.random thumbsup

    robot.respond /react (sad|cry)/i, (msg) ->
        msg.send msg.random sad

    robot.respond /react (disappoint|disappointed|upset)/i, (msg) ->
        msg.send msg.random disappoint

    robot.respond /react (guilty|not me)/i, (msg) ->
        msg.send msg.random guilty

    robot.respond /react (impatient|taking too long|speed it up|faster)/i, (msg) ->
        msg.send msg.random impatient

    robot.respond /react (nope|no way)/i, (msg) ->
        msg.send msg.random nope
