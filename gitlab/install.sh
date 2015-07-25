#!/bin/bash
# Run as root

NAME="docker-gitlab"

docker-compose up
cp ./${NAME} /etc/init.d/${NAME}
chmod 774 /etc/init.d/${NAME}
update-rc.d ${NAME} defaults 99 01

# To restore a backup
# docker run --name=gitlab --link gitlab_postgresql_1:postgresql --link gitlab_redis_1:redisio -v /srv/docker/gitlab/gitlab:/home/git/data -it --rm sameersbn/gitlab:7.11.3 app:rake gitlab:backup:restore

