FROM centos:7
MAINTAINER kse201 <kse.201@gmail.com>

RUN yum update -y && \
    yum install -y git epel-release && \
    yum install -y nodejs redis npm && \
    yum clean all

RUN git config --global url."https://".insteadOf git://
RUN npm update -g npm && \
    npm cache clean

ADD ./src /opt/hubot/
WORKDIR "/opt/hubot"
VOLUME ["/opt/hubot/conf"]

ENTRYPOINT ["./bin/run-hubot"]
