FROM centos:7
MAINTAINER Chanwoong Park <chanwoong.bak@gmail.com>

ENV __VERSION 0.5.1

RUN mkdir /mesos-dns
RUN curl -fL https://github.com/mesosphere/mesos-dns/releases/download/v${__VERSION}/mesos-dns-v${__VERSION}-linux-amd64 > /mesos-dns/mesos-dns
RUN chmod +x /mesos-dns/mesos-dns

WORKDIR /mesos-dns

ENTRYPOINT ["/mesos-dns/mesos-dns"]
