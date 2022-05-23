FROM quay.io/56401deb-7290-4d8b-8731-baf6d8b5d27d/nginx

VOLUME /var/www/html
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /var/cache/nginx
RUN chown -R 1001:0 /var/cache/nginx && \
    chmod -R a+rwx /var/cache/nginx && \
    chmod -R ug+rwx /var/cache/nginx

