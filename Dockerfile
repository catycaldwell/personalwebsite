FROM ubuntu:18.04
MAINTAINER Caitlin Caldwell

RUN apt update -y && apt upgrade -y
RUN apt install -y nginx

COPY nginx /etc/nginx

CMD service nginx start

# Create web user and switch to this user
RUN useradd --create-home --shell /bin/bash webuser
USER webuser
WORKDIR /home/webuser

# Copy web applications
COPY --chown=webuser html /home/webuser/html

USER root
ENTRYPOINT service nginx start && bash

EXPOSE 22/tcp
EXPOSE 80/tcp
