FROM docker.io/centos

MAINTAINER grenadi grenadi88@gmail.com

RUN yum install -y httpd && \
    yum clean all

EXPOSE 80

COPY ./src/ /var/www/html

ENTRYPOINT ["/usr/sbin/httpd"]

CMD ["-D", "FOREGROUND"]
