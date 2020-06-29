FROM centos
MAINTAINER wuxuewen "1404567190@qq.com"
ENV REFRESHED_AT 2020-06-29
RUN yum makecache && yum install -y nginx
VOLUME ["/usr/share/nginx/html"]
RUN echo "Hi,I am in your container" > /usr/share/nginx/html/index.html
ENTRYPOINT ["nginx"]
CMD ["-h"]
EXPOSE 80
