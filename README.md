# docker-hubot

## How to use
### build
```
# docker build -t kse201/hubot .
```
### run container
```
# docker run \
  -p 3000:3000 \
  -v /var/log/irc:/var/log/irc \
  -v /etc/localtime:/etc/localtime:ro \
  -e 'HUBOT_IRC_SERVER=irc.ircnet.ne.jp' \
  -e 'HUBOT_IRC_PORT=6667' \
  -e 'HUBOT_IRC_ROOMS=#channel' \
  -e 'HUBOT_IRC_USERNAME=hubot' \
  -e 'HUBOT_IRC_NICK=hubot' \
  -e 'IRCLOGS_PORT=3000' \
  -e 'IRCLOGS_FOLDER=/var/log/irc' \
  -d -t kse201/hubot
```
