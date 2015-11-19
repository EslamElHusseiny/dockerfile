## Usage

```
docker run -d \
-e MESOS_HOSTNAME=$HOSTIP \
-e MESOS_IP=$HOSTIP \
-e MESOS_MASTER=zk://$ZOO:2181/mesos \
-v /sys/fs/cgroup:/sys/fs/cgroup \
-v /var/run/docker.sock:/var/run/docker.sock \
--name mesos-slave --net host --privileged --restart always \
cwbak/mesos-slave:0.24.1-centos-7
```
