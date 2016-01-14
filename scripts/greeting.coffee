util = require 'util'

module.exports = (robot) ->
  robot.enter (resp) ->
    robot.logger.debug util.inspect(resp)

    enter_user = resp.message.user.name
    robot.logger.debug (resp.robot.name in enter_user)
    if resp.robot.name == enter_user
        user = "guys"
    else
        user = enter_user

    resp.send "hey #{user}!"

  robot.respond /hello/, (resp) ->
    # resp.send util.inspect(resp)
    resp.send "hello #{resp.message.user.name}"
