FROM centos:7
MAINTAINER Chanwoong Park <chanwoong.bak@gmail.com>

ENV DCOS_CLI_VERSION 0.2.0

RUN mkdir /dcos-cli
RUN yum install -y epel-release 
RUN yum install -y python-pip
RUN pip install virtualenv>=12.0

COPY config.sh /dcos-cli/
COPY entrypoint.sh /dcos-cli/

RUN curl -fL https://downloads.mesosphere.io/dcos-cli/install.sh  | cat > /dcos-cli/install.sh
RUN bash /dcos-cli/config.sh
RUN bash /dcos-cli/install.sh /dcos-cli http://master.mesos:5050 --add-path yes
RUN ln -s /dcos-cli/bin/dcos /usr/local/bin/dcos

WORKDIR /dcos-cli
ENTRYPOINT ["/dcos-cli/entrypoint.sh"]
