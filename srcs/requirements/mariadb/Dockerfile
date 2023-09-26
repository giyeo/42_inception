FROM debian:oldstable

RUN apt-get update
RUN apt-get install mariadb-server -y

COPY ./config.sql /tmp/config.sql
COPY ./init.sh .

EXPOSE 3306

ENTRYPOINT ["bash", "init.sh"]