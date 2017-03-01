chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'responses', ->
  beforeEach ->
    @robot =
      hear: sinon.spy()
    @msg =
      send: sinon.spy()

    require('../src/responses')(@robot)

  it 'registers a bad listener', ->
    expect(@robot.hear).to.have.been.calledWith(/(kicks|hits|bad) (bot|hubot)/)

  it 'registers a good listener', ->
    expect(@robot.hear).to.have.been.calledWith(/(pats|hugs|good) (bot|hubot)/)

  it 'registers a awesome listener', ->
    expect(@robot.hear).to.have.been.calledWith(/(awesome|way to go|good job)/)

  it 'registers a abides listener', ->
    expect(@robot.hear).to.have.been.calledWith(/(dude abides|he abides|the dude|big lebowski)/)
