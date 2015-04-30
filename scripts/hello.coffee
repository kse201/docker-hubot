module.exports = (robot) ->
  robot.hear /hello/, (msg) ->
    msg.send "hello"

  robot.respond /go away/i, (msg) ->
    user = msg.message.user.name.toLowerCase()
    room = msg.message.user.room
    msg.reply "OK. bye #{user}."
    robot.adapter.bot.part room

  robot.respond /join (\S*)/i, (msg) ->
    room = msg.match[1]
    msg.reply "OK. I'll join #{room} channel."
    robot.adapter.bot.join room
