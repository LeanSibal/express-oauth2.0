FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y \
	supervisor \
	curl \
	make \
	gnupg \
    mysql-client

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash
RUN apt-get install nodejs -y
RUN npm install -g pm2 nodemon

COPY ./docker/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

WORKDIR /code
COPY . /code

EXPOSE 80

CMD ["/usr/bin/supervisord"]