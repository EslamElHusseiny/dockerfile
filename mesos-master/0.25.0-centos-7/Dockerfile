FROM centos:7
MAINTAINER Chanwoong Park <chanwoong.bak@gmail.com>

ENV __VERSION 0.25.0

RUN rpm -i http://repos.mesosphere.io/el/7/noarch/RPMS/mesosphere-el-repo-7-1.noarch.rpm && \
    yum -y install mesos-${__VERSION}

ENV MESOS_WORK_DIR /tmp/mesos
ENV MESOS_CONTAINERIZERS docker,mesos
ENV MESOS_EXECUTOR_REGISTRATION_TIMEOUT 5mins

VOLUME /tmp/mesos

ENTRYPOINT ["/usr/sbin/mesos-master"]
