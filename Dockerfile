FROM openresty/openresty:latest-trusty
ADD ./nginx.conf /etc/nginx/nginx.conf
RUN mkdir /run/nginx
CMD nginx