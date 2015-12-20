require './helper'
TextMessage = require('hubot/src/message').TextMessage

describe 'greeting', ->
  {robot, user, adapter} = {}

  shared_context.robot_is_running (ret) ->
    {robot, user, adapter} = ret

  beforeEach ->
    require('../scripts/greeting')(robot)

  it 'responds "hello"', (done) ->
    adapter.on 'send', (envelope, strings) ->
      expect(envelope.user.name).to.equal('mocha')
      expect(strings[0]).to.equal('hello')
    , done
    adapter.receive(new TextMessage(user, 'hubot hello'))
