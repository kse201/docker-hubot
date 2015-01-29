FROM centos
MAINTAINER kse201

# ENV http_proxy  <HTTP_PROXY>
# ENV https_proxy <HTTPS_RPXY>
# ENV HTTP_PROXY  <HTTP_RPXY>
# ENV HTTPS_PROXY <HTTPS_RPXY>

RUN yum install -y epel-release
RUN yum install -y nodejs redis npm
RUN yum install -y git

RUN npm update -g npm
RUN npm install -g coffee-script hubot
RUN npm install -g yo generator-hubot

#ADD * /hubot/
RUN git clone https://github.com/kse201/docker-hubot
WORKDIR /hubot
RUN npm install

EXPOSE 3000
RUN mkdir /var/log/irc
VOLUME ["/var/log/irc"]

CMD ./bin/hubot \
  -a irc \
  -n hubot
