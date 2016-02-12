FROM centos:7.1.1503
MAINTAINER ldelossa "ldelossa.ld@gmail.com"

RUN yum install -y epel-release; yum install -y nginx
ADD nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT nginx -c /etc/nginx/nginx.conf
