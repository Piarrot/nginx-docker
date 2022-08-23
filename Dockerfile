FROM nginx:alpine

# Install certbot
RUN apk add certbot

# Init certbot cron job (try renew certs every day at noon)
RUN echo "0 12 * * * /usr/bin/certbot renew --quiet" >> /etc/crontabs/root

#Init NGINX base config
COPY nginx/nginx.conf /etc/nginx/nginx.conf
RUN rm /etc/nginx/conf.d/default.conf

# Expose ports
EXPOSE 80
EXPOSE 443

# Remove default entrypoint
ENTRYPOINT []

# Setup starting command
CMD ["nginx","-g", "daemon off;"]
