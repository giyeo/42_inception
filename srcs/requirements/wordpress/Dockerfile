FROM debian:oldstable

WORKDIR app/
RUN apt-get update
RUN apt-get install php-fpm php7.4-mysql -y
RUN /etc/init.d/php7.4-fpm start

COPY www.conf /etc/php/7.4/fpm/pool.d/

ADD wordpress.tar.gz .
RUN chown www-data:www-data -R /app/wordpress
COPY run.sh .

EXPOSE 9000
ENTRYPOINT ["bash", "run.sh"]