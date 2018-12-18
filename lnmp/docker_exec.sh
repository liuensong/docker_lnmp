#!/bin/bash
name="lnmp";
if [ $1 ]; then
name=$1;
fi
docker exec -it $name /bin/bash
