FROM centos:7 

MAINTAINER Ricardson Williams <ricardsonwilliams@gmail.com>

RUN \
	yum -y update &&\
	yum -y install \
	epel-release \
	php-mysql \
	mod_ssl \
	less \
	which &&\
	yum clean all

RUN \
	yum -y python-certbot-apache &&\
        yum clean all

RUN \
        sed -i "s/short_open_tag = Off/short_open_tag = On/g" /etc/php.ini &&\
	sed -i "s/#ServerName www.example.com:80/ServerName localhost:80/g" /etc/httpd/conf/httpd.conf &&\
	sed -i "s/AllowOverride None/AllowOverride All/g" /etc/httpd/conf/httpd.conf

ADD index.php /var/www/html

WORKDIR /var/www/html

EXPOSE 80

ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
