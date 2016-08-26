FROM openresty/openresty:latest-alpine
ADD ./nginx.conf /etc/nginx/nginx.conf
CMD ["-c", "/etc/nginx/nginx.conf"]