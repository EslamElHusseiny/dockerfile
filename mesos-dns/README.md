# Dockerfile for mesos-dns

## Usage

```
docker run -d \
-v /etc/config.json:/mesos-dns/config.json \
--name mesos-dns --net host --restart always \
cwbak/mesos-dns:0.5.1-centos-7 -v 2 -config=config.json
```
