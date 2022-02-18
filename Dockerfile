FROM ubuntu
RUN apt-get update -y
RUN apt-get install nginx -y
RUN rm -f /var/www/html/*.html
ENV name DevOps Intellipath
