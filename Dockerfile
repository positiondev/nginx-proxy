FROM gliderlabs/alpine
RUN apk-install nginx && mkdir /tmp/nginx
RUN chown -R nginx /var/lib/nginx
ADD ./nginx.conf /etc/nginx/nginx.conf
CMD ["nginx", "-g", "'pid /tmp/nginx.pid; daemon off;'"]
