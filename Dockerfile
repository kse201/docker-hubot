FROM centos
MAINTAINER kse201 <kse.201@gmail.com>

# ENV http_proxy  <HTTP_PROXY>
# ENV https_proxy <HTTPS_RPXY>
# ENV HTTP_PROXY  <HTTP_RPXY>
# ENV HTTPS_PROXY <HTTPS_RPXY>

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
