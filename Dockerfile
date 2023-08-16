FROM centos:latest
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page294/electrochip.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip electrochip.zip
RUN cp -rvf electrochip-html/* .
RUN rm -rf electrochip-html electrochip.zip
CMD ["/usr/sbin/httpd", "-D", "FROEGROUND"]
EXPOSE 80
