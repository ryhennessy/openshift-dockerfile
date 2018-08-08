FROM rhel7

MAINTAINER This Crazy Dude

RUN yum install httpd
COPY index.html /var/www/html

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
