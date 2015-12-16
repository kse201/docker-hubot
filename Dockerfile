FROM centos:7
MAINTAINER kse201 <kse.201@gmail.com>

RUN yum install -y epel-release
RUN yum install -y nodejs redis npm

RUN npm update -g npm
RUN npm install -g coffee-script hubot

ADD . /hubot/
WORKDIR /hubot
RUN npm install

CMD ./bin/hubot \
  -a irc \
  -n hubot
