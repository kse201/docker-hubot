#!/bin/bash
source ./hubotrc

export HUBOT_NAME="hubot"
export HUBOT_ADAPTOR="irc"

./bin/hubot \
  -a ${HUBOT_ADAPTOR}\
  -n ${HUBOT_NAME}
