FROM ubuntu:latest

RUN apt update -y
ENV DEBIAN_FRONTEND=noninteractive
RUN apt install apache2 -y
RUN apt install mysql-server mysql-client -y
RUN apt install php libapache2-mod-php php-mysql -y

COPY index.html /var/www/html/
COPY hello.php /var/www/html/

CMD [ "echo", "LAMP image has been successfully created! Try running this command : docker run -d -p 80:80 <imagename> /usr/sbin/apache2ctl -D FOREGROUND" ]

EXPOSE 80