# Description
#   response QQM URL
#
# Configuration:
#   None
#
# Commands:
#  hubot emit loaded
#
# Author:
#   kse201 <kse.201@gmail.com>
#
module.exports = (robot) ->
  robot.respond /emit loaded/, (resp) ->
      robot.brain.emit 'loaded', robot.brain.data
      resp.send "emit 'loaded'"
