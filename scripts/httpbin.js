const HTTPBIN = 'https://httpbin.org'

module.exports = (robot) => {
  robot.respond(/ip/, (res) => {
    get_global_ip((ip) => {
      res.send(`global ip is ${ip}`)
    })
  })

  robot.router.get('/ip', (req, res) => {
    get_global_ip((ip) => {
      res.send(`global ip is ${ip}`)
    })
  })

  function get_global_ip (cb) {
    robot.http(HTTPBIN)
    .path('/ip')
    .get()((err, resp, body) => {
        if (err) {
          robot.logger.error(err)
          return
        }

        if (resp.statusCode !== 200) {
          robot.logger.error(body)
          return
        }

        ip = JSON.parse(body).origin

        cb(ip)
      }
    )
  }
}
