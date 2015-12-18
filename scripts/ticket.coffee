# Description
#   response ticket URL
#
# Configuration:
#   None
#
# Commands:
#   <keyword> #XXXX.. response ticket URL

# Author:
#   kse201 <kse.201@gmail.com>
#   

config =
  ticket_patterns: JSON.parse(process.env.HUBOT_TICKET_PATTERNS ? '{}')
module.exports = (robot) ->
  robot.hear /(\S*) #(\d*)/, (msg) ->
    redmine_key= msg.match[1]
    ticket_num = msg.match[2]
    if config.ticket_patterns[redmine_key]?
      redmine_host = config.ticket_patterns[redmine_key]
      msg.send "#{redmine_host}/#{ticket_num}"

