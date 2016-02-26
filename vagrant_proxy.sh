#!/bin/sh

PROXY_HOST=$1

if [ "x${PROXY_ENABLED}" != "x" ]; then
cat << EOF > /etc/profile.d/proxy.sh
export http_proxy=${PROXY_HOST}
export https_proxy=${PROXY_HOST}
export ftp_proxy=${PROXY_HOST}
EOF
fi
