chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'real', ->
  beforeEach ->
    @robot =
      hear: sinon.spy()
    @msg =
      send: sinon.spy()

    require('../src/real')(@robot)

  it 'registers a realCoffee listener', ->
    expect(@robot.hear).to.have.been.calledWith(/real(c|C)offee/i)

  it 'registers a realBeer listener', ->
    expect(@robot.hear).to.have.been.calledWith(/real(b|B)eer/i)

  it 'registers a realWine listener', ->
    expect(@robot.hear).to.have.been.calledWith(/real(w|W)ine/i)

  it 'registers a realCity listener', ->
    expect(@robot.hear).to.have.been.calledWith(/real(c|C)ity/i)

  it 'registers a realLiquor listener', ->
    expect(@robot.hear).to.have.been.calledWith(/real(l|L)iquor/i)

  it 'registers a realFood listener', ->
    expect(@robot.hear).to.have.been.calledWith(/real(f|F)ood/i)

  it 'registers a realVodka listener', ->
   expect(@robot.hear).to.have.been.calledWith(/real(v|V)odka/i)

  it 'registers a realMartini listener', ->
    expect(@robot.hear).to.have.been.calledWith(/real(m|M)artini/i)

