# Description:
#  Displays cool ascii faces
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot face me - displays a random ascii face
#
# Notes
#   None
#
# Author:
#   Morgan Wigmanich <okize123@gmail.com> (https://github.com/okize)

getRandomFace = require 'cool-ascii-faces'

module.exports = (robot) ->

  robot.respond /face me/i, (msg) ->
    msg.send getRandomFace()
