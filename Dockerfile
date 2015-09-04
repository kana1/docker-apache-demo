# A basic apache server. To use either add or bind mount content under /var/www
FROM debian:8.0

MAINTAINER Kamindu Nanayakkara version: 1.0

RUN apt-get update && \
	apt-get install -y apache2 && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

