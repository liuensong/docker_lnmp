#!/bin/bash
name="lnmp";
if [ $1 ]; then
name=$1;
fi
docker run -dit -p 80:80 -p 21:21 -p 22:22 -p 3306:3306 -p 6739:6739 -p 11211:11211 \
-v /Users/liuns/Workspace:/usr/share/nginx/html \
-v /Users/liuns/Workspace/docker/lnmp/php.d:/etc/php.d \
-v /Users/liuns/Workspace/docker/lnmp/php-fpm.d:/etc/php-fpm.d \
-v /Users/liuns/Workspace/docker/lnmp/nginx/nginx.conf:/etc/nginx/nginx.conf \
-v /Users/liuns/Workspace/docker/lnmp/nginx/nginx.crt:/etc/nginx/nginx.crt \
-v /Users/liuns/Workspace/docker/lnmp/nginx/nginx.key:/etc/nginx/nginx.key \
-v /Users/liuns/Workspace/docker/lnmp/nginx/conf.d:/etc/nginx/conf.d \
--privileged=true --name $name lnmp:1.0 /bin/bash
