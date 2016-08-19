FROM gliderlabs/alpine
RUN apk-install nginx && mkdir /tmp/nginx
RUN chown -R nginx /var/lib/nginx
ADD ./nginx.conf /etc/nginx/nginx.conf
RUN mkdir /run/nginx
CMD nginx