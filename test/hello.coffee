require './helper'
TextMessage = require('hubot/src/message').TextMessage

describe 'hello', ->  
  {robot, user, adapter} = {}

  shared_context.robot_is_running (ret) ->
    {robot, user, adapter} = ret

  beforeEach ->
    require('../scripts/hello')(robot)

  it 'responds "hello"', (done) ->
    adapter.on 'send', (envelope, strings) ->
      expect(envelope.user.name).to.equal('mocha')
      expect(strings[0]).to.equal('hello')
    , done
    adapter.receive(new TextMessage(user, 'hubot hello'))

  it 'responds "go away"', (done) ->
    adapter.on 'reply', (envelope, strings) ->
      expect(envelope.user.name).to.equal('mocha')
      expect(strings[0]).to.equal('OK. bye mocha.')
    , done
    adapter.receive(new TextMessage(user, 'hubot go away'))

  it 'responds "join"', (done) ->
    adapter.on 'reply', (envelope, strings) ->
      expect(envelope.user.name).to.equal('mocha')
      expect(strings[0]).to.equal("OK. I'll join #foo channel.")
    , done
    adapter.receive(new TextMessage(user, 'hubot join #foo'))
