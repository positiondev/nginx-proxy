FROM gliderlabs/alpine:3.4

RUN apk-install nginx && mkdir /tmp/nginx
RUN chown -R nginx /var/lib/nginx
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./server_80.conf /etc/nginx/server_80.conf
ADD ./server_81.conf /etc/nginx/server_81.conf
RUN mkdir /run/nginx
CMD nginx
