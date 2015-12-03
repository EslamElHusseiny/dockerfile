FROM centos:7
MAINTAINER Chanwoong Park <chanwoong.bak@gmail.com>

ENV VERSION 0.24.1
ENV DOCKER_VERSION 1.8.2

RUN rpm -i http://repos.mesosphere.io/el/7/noarch/RPMS/mesosphere-el-repo-7-1.noarch.rpm && \
    yum -y install mesos-${VERSION} docker-${DOCKER_VERSION}

ENV MESOS_WORK_DIR /tmp/mesos
ENV MESOS_CONTAINERIZERS docker,mesos
ENV MESOS_EXECUTOR_REGISTRATION_TIMEOUT 5mins

VOLUME /tmp/mesos

ENTRYPOINT ["/usr/sbin/mesos-slave"]
