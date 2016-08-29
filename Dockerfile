FROM openresty/openresty:latest-alpine
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./server_80.conf /etc/nginx/server_80.conf
ADD ./server_81.conf /etc/nginx/server_81.conf
CMD ["-c", "/etc/nginx/nginx.conf"]