#!/bin/bash
set -e

if [ -z "$DEEP_REDIRECT" ]; then
    envsubst '${DESTINATION}' < /etc/nginx/conf.d/simple-redirect.conf.template > /etc/nginx/conf.d/default.conf
else
    envsubst '${DESTINATION}' < /etc/nginx/conf.d/deep-redirect.conf.template > /etc/nginx/conf.d/default.conf
fi
nginx -g 'daemon off;'
