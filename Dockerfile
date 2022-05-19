FROM centos:latest
MAINTAINER Harshavardhan
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install -y httpd
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/html/
WORKDIR /var/www/html/
RUN unzip phototgenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogrnic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80


