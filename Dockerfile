FROM centos:latest
MAINTAINER Harshavardhan
RUN yum install -y httpd \
 zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/html/
WORKDIR /var/www/html/
RUN unzip phototgenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogrnic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80


