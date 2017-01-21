FROM centos:7 

MAINTAINER Ricardson Williams <ricardsonwilliams@gmail.com>

RUN \
	yum -y update &&\
	yum -y install \
	php \
	php-mysql \
	which &&\
	yum clean all
        
VOLUME /srv

WORKDIR /var/www/html

EXPOSE 80

ENTRYPOINT ["/usr/bin/caddy"]
CMD ["--conf", "/etc/Caddyfile", "--log", "stdout"]
