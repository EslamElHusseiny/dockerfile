# Dockerfile for DCOS Command Line Interface

## Usage

### Run on container
```
$ docker run \
-e DCOS_URL=http://127.0.0.1:5050 \
-e MARATHON_URL=http://127.0.0.1:8080 \
cwbak/dcos-cli:0.2.0 dcos config show
```

### Run Interactive shell
```
$ docker run -it \
cwbak/dcos-cli:0.2.0 bash
```
