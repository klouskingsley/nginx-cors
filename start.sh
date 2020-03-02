#!/usr/bin/env bash
#envsubst < /app/nginx.conf.template > /etc/nginx/nginx.conf

envsubst '${LOCATION_PATH} ${PROXY_PASS_ADDR}' < /app/nginx.conf.template > /etc/nginx/nginx.conf

cat /etc/nginx/nginx.conf
nginx -g "daemon off;"
