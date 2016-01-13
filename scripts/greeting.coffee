util = require 'util'

module.exports = (robot) ->
  robot.hear /hello/, (msg) ->
    msg.send util.inspect(msg)
    msg.send "hello"
