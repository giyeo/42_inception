FROM debian:oldstable

WORKDIR app/

RUN apt-get update

RUN apt-get install php-fpm php7.4-mysql -y

RUN /etc/init.d/php7.4-fpm start

ADD wordpress.tar.gz .

COPY www.conf /etc/php/7.4/fpm/pool.d/

RUN chown www-data:www-data -R /app/wordpress

EXPOSE 9000

COPY run.sh .

ENTRYPOINT ["bash", "run.sh"]