FROM centos:7
MAINTAINER Chanwoong Park <chanwoong.bak@gmail.com>

ENV VERSION 3.4.6

RUN yum install -y java-1.7.0-openjdk-headless tar
RUN curl -fL http://apache.mirror.cdnetworks.com/zookeeper/zookeeper-${VERSION}/zookeeper-${VERSION}.tar.gz | tar xzf - -C /opt && \
    mv /opt/zookeeper-${VERSION} /opt/zookeeper

ENTRYPOINT ["/opt/zookeeper/bin/zkCli.sh", "-server"]