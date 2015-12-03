#!/bin/sh

mkdir ~/.dcos

cat <<EOF > ~/.dcos/dcos.toml
[core]
email = "dcos@localhost"
EOF
