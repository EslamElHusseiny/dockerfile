#!/bin/sh

if [ ! -z "$DCOS_URL" ]; then dcos config set core.dcos_url $DCOS_URL; fi
if [ ! -z "$MARATHON_URL" ]; then dcos config set marathon.url $MARATHON_URL; fi

exec "$@"
