#!/bin/bash
# Run as root

NAME="docker-gogs"

docker-compose up -d
cp ./${NAME} /etc/init.d/${NAME}
chmod 774 /etc/init.d/${NAME}
update-rc.d ${NAME} defaults 99 01

# Connect with
# gogs -h 127.0.1.1 --port 13306 -u root -p

