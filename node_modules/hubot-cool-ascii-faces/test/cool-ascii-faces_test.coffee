chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'hubot-cool-ascii-faces', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/cool-ascii-faces')(@robot)

  it 'does register a hear listener', ->
    expect(@robot.respond).to.have.been.calledWithMatch sinon.match( (val) ->
      val.test /face me/
    )

  it 'does NOT register a hear listener', ->
    expect(@robot.hear).to.not.have.been.calledWith sinon.match( (val) ->
      val.test /fac eme/
    )
