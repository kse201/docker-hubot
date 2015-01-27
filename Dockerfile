FROM centos
MAINTAINER kse201

ENV http_proxy <HTTP_PROXY>
ENV https_proxy <HTTPS_PROXY>
RUN yum install -y epel-release
RUN yum install -y nodejs redis npm
RUN npm install -g coffee-script hubot
RUN npm install -g yo generater-hubot

# TODO deploy hubot scripts
