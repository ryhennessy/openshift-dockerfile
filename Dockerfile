FROM registry.access.redhat.com/rhel7:latest

MAINTAINER This Crazy Dude

RUN yum -y install httpd
COPY index.html /var/www/html

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
