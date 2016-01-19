#!/bin/bash

source ./tools/hubotrc

export HUBOT_NAME="hubot"
export HUBOT_ADAPTOR="slack"

export HUBOT_SLACK_TOKEN=""
export HUBOT_SLACK_TEAM=""
export HUBOT_SLACK_BOTNAME=${HUBOT_NAME}

./bin/hubot \
  -a ${HUBOT_ADAPTOR}\
  -n ${HUBOT_NAME}
