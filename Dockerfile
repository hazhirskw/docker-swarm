FROM ubuntu:latest
RUN apt update
RUN apt -y install apache2
RUN DEBIAN_FRONTEND=noninteractive apt -y install php7.2 php7.2-mysql
RUN apt -y install libapache2-mod-php
RUN rm -rf /var/www/html/*
COPY ./ /var/www/html/
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND
