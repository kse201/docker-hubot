cronJob = require('cron').CronJob

module.exports = (robot) ->
  send = (room, mgs) ->
    response = new robot.Response(robot,  {user : {id : -1,  name : room},  text : "none",  done : false}, [])
    response.send msg

   new cronJob('0 0 * * * * *', () ->
     send "#hoge",  "current time is #{new Date().getHours()}:00."
   ).start()
