#version 0.0.1

FROM ubuntu
MAINTAINER Alex Huang "nikshuang@163.com"
ENV REFRESHED_AT 2015-9-8

RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt-add-repository ppa:docker-maint/testing
RUN apt-get update
RUN apt-get install -y jenkins docker.io

EXPOSE 8080
