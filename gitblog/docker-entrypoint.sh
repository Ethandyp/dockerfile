#!/bin/sh
if [ "$GIT_URL" != "**NULL**" ];then
    git clone ${GIT_URL}
    mv /www/blog/conf.yaml /www/conf.yaml
fi
exec /usr/bin/supervisord -c /etc/supervisor/supervisord.conf