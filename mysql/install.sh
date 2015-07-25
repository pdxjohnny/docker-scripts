#!/bin/bash
# Run as root

NAME="docker-mysql"

docker-compose up
cp ./${NAME} /etc/init.d/${NAME}
chmod 774 /etc/init.d/${NAME}
update-rc.d ${NAME} defaults 99 01

# Connect with
# mysql -h 127.0.1.1 --port 13306 -u root -p

