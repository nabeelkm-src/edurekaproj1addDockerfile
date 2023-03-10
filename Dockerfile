FROM devopsedu/webapp
RUN apt-get update && apt-get install -yq apache2 php5.6 libapache2-mod-php5.6 php5.6-mysql
RUN apt-get install -yq openssh-server
RUN mkdir /var/run/sshd

ADD edurekaProj1 /var/www/html
CMD ["apache2ctl","-D", "FOREGROUND"]
EXPOSE 80

