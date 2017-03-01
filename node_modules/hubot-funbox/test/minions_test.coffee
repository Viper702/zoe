chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'
coffeeScript = require('coffee-script')

expect = chai.expect

describe 'minions', ->
  beforeEach ->
    @robot =
      hear: sinon.spy()
    @msg =
      send: sinon.spy()

    require('../src/minions')(@robot)

  it 'registers minions listener', ->
    expect(@robot.hear).to.have.been.calledWith(/(m|M)inion(s|)/i)
