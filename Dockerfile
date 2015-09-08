#version 0.0.1

FROM ubuntu
MAINTAINER Alex Huang "nikshuang@163.com"
ENV REFRESHED_AT 2015-9-8

RUN apt-get -qq update
RUN apt-get install -yqq curl wget
RUN curl -sSL https://get.docker.com/ | sh
RUN sh -c 'wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -'
RUN sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt-get -qq update
RUN apt-get install -y jenkins

EXPOSE 8080
