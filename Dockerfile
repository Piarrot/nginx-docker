FROM nginx:alpine

apk add certbot certbot-nginx

RUN echo "0 12 * * * /usr/bin/certbot renew --quiet" >> /etc/crontabs/root

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/conf.d /etc/nginx/conf.d
COPY nginx/ssl /etc/nginx/ssl

RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 80
EXPOSE 443

ENTRYPOINT []

CMD ["nginx","-g", "daemon off;"]
