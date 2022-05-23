FROM quay.io/openshifttest/nginx-alpine

VOLUME /var/www/html
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /var/cache/nginx
RUN chown -R 1001:0 /var/cache/nginx && \
    chmod -R a+rwx /var/cache/nginx && \
    chmod -R ug+rwx /var/cache/nginx

