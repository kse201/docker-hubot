#!/bin/bash

export HUBOT_SLACK_TOKEN=""
export HUBOT_SLACK_TEAM=""
export HUBOT_SLACK_BOTNAME=hubot 
# export HUBOT_LOG_LEVEL=debug

./bin/hubot \
    -a slack \
    -n hubot 
