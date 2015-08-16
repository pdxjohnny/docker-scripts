#!/bin/bash
# Run as root

NAME="docker-cassandra"

docker-compose up -d
cp ./${NAME} /etc/init.d/${NAME}
chmod 774 /etc/init.d/${NAME}
update-rc.d ${NAME} defaults 99 01


