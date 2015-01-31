cronJob = require('cron').CronJob

module.exports = (robot) ->
  send = (room, msg) ->
    response = new robot.Response(robot,  {user : {id : -1,  name : room},  text : "none",  done : false}, [])
    response.send msg

   new cronJob('0 0 * * * * *', () ->
     send "#test",  "current time is #{new Date().getHours()}:#{new Date().getMinutes()}."
   ).start()
