let spawn = require('child_process').spawn

module.exports = (robot) => {
  robot.respond(/cmd (.*)/i, (res) => {
    var args, cmd, match, p

    match = res.match[1].split(' ')
    cmd = match.shift()
    args = match

    robot.logger.debug(cmd)
    robot.logger.debug(args)

    if (cmd.endsWith('rm')) {
      res.send('Are you sure?')
      return
    }

    p = spawn(cmd, args)

    p.stdout.on('data', (data) => {
      res.send(`${data}`)
    })

    p.stderr.on('data', (data) => {
      robot.logger.error(`${data}`)
    })

    p.on('close', (code) => {
      res.send(`${cmd} ${args} exit: ${code}`)
    })
  })
}
