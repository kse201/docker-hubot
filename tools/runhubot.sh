#!/bin/bash

source ./tools/hubotrc

export HUBOT_IRC_SERVER="localhost"
export HUBOT_IRC_PORT="6667"
export HUBOT_IRC_ROOMS="#bot"
export HUBOT_IRC_USERNAME="hubot"
export HUBOT_IRC_NICK="hubot"
export HUBOT_IRC_UNFLOOD=true
# export HUBOT_IRC_PASSWORD="password"

./bin/hubot \
    -a irc \
    -n hubot 
