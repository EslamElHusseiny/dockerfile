# Dockerfile for mesos-dns

## Usage

```
docker run -d \
--net host \
-v /etc/config.json:/config.json \
cwbak/mesos-dns:0.5.1-centos-7 -v 2 -config=/config.json
```
