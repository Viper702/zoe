chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'reactions', ->
  beforeEach ->
    @robot =
      hear: sinon.spy()
      respond: sinon.spy()
    @msg =
      send: sinon.spy()

    require('../src/reactions')(@robot)

  it 'registers a fail responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (fail)/i)

  it 'registers a fangirling responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (fangirling)/i)

  it 'registers a slowclap responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (slowclap|clap|applause|slow clap)/i)

  it 'registers a success responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (success|awesome)/i)

  it 'registers a freakout responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (freakout|scared)/i)

  it 'registers a bubbles responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (bubbles|bubble)/i)

  it 'registers a MicDrop responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (micdrop|mic drop)/i)

  it 'registers a highfive responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (high five|high 5|high5|highfive|h5)/i)

  it 'registers a facepalm responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (facepalm|fp|oh no)/i)

  it 'registers a bye responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (bye|later|see ya)/i)

  it 'registers a smash responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (smash|hulk smash)/i)

  it 'registers a sigh responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (sigh|bored)/i)

  it 'registers a nailed it responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (nailedit|nailed it)/i)

  it 'registers a seriously responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (seriously|for real|are you kidding me|wtf)/i)

  it 'registers a dealwithit responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (dealwithit|deal with it|deal)/i)

  it 'registers a thumbsup responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (thumbsup|thumbs up)/i)

  it 'registers a sad responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (sad|cry)/i)

  it 'registers a disappoint responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (disappoint|disappointed|upset)/i)

  it 'registers a impatient responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (impatient|taking too long|speed it up|faster)/i)

  it 'registers a guilty responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (guilty|not me)/i)

  it 'registers a nope responder', ->
    expect(@robot.respond).to.have.been.calledWith(/react (nope|no way)/i)

