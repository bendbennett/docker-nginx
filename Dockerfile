# Version 0.0.1
FROM ubuntu:14.04
MAINTAINER Ben Bennett
ENV REFRESHED_AT 2015-06-15:17:19
RUN ["apt-get", "-y", "update"]
RUN ["apt-get", "-y", "install", "nginx"]
RUN echo 'Hi, I am in your container' > /usr/share/nginx/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-h"]
