FROM ubuntu:16.04
RUN apt-get update && apt-get install -y vim apache2
COPY index.html /var/www/html
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]