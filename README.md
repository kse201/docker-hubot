# docker-hubot

## How to use
### build
```
# docker build -t kse201/hubot .
```
### run container
```
# docker run \
  -v /etc/localtime:/etc/localtime:ro \
  -e 'HUBOT_IRC_SERVER=irc.ircnet.ne.jp' \
  -e 'HUBOT_IRC_PORT=6667' \
  -e 'HUBOT_IRC_ROOMS=#channel' \
  -e 'HUBOT_IRC_USERNAME=hubot' \
  -e 'HUBOT_IRC_NICK=hubot' \
  -e "HUBOT_TICKET_PATTERNS='{"keyword":"http://foo.bar/redmine/issues"}'" \
  -d -t kse201/hubot
```
## test
```
$ mocha
```
