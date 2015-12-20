require './helper'
TextMessage = require('hubot/src/message').TextMessage
process.env.HUBOT_TICKET_PATTERNS = '{ "redmine1":"http://redmine1/redmine/issues" , "redmine2":"http://redmine2/redmine/issues" }'
describe 'ticket', ->
  {robot, user, adapter} = {}

  shared_context.robot_is_running (ret) ->
    {robot, user, adapter} = ret

  beforeEach ->
    require('../scripts/ticket')(robot)

  it 'responds redmine1 tichet URL', (done) ->
    adapter.on 'send', (envelope, strings) ->
      expect(envelope.user.name).to.equal('mocha')
      expect(strings[0]).to.equal('http://redmine1/redmine/issues/100')
    , done

    adapter.receive(new TextMessage(user, 'redmine1 #100'))

  it 'responds redmine2 tichet URL', (done) ->
    adapter.on 'send', (envelope, strings) ->
      expect(envelope.user.name).to.equal('mocha')
      expect(strings[0]).to.equal('http://redmine2/redmine/issues/100')
    , done

    adapter.receive(new TextMessage(user, 'redmine2 #100'))
