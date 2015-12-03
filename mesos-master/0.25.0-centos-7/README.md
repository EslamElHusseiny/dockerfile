# Dockerfile for mesos-master

## Usage

```
docker run -d \
-e MESOS_HOSTNAME=$HOSTIP \
-e MESOS_IP=$HOSTIP \
-e MESOS_QUORUM=1 \
-e MESOS_ZK=zk://$ZOO:2181/mesos \
-e MESOS_HOSTNAME_LOOKUP=false \
-e MESOS_ADVERTISE_IP=$HOSTIP \
--name mesos-master --net host --restart always \
cwbak/mesos-master:0.25.0-centos-7
```
