#!/bin/bash

export HUBOT_IRC_SERVER="localhost"
export HUBOT_IRC_PORT="6667"
export HUBOT_IRC_ROOMS="#bot"
export HUBOT_IRC_USERNAME="hubot"
export HUBOT_IRC_NICK="hubot"
# export HUBOT_IRC_PASSWORD="password"

export IRCLOGS_PORT=3000
export IRCLOGS_FOLDER="/var/log/irc"

./bin/hubot \
    -a irc \
    -n hubot 
