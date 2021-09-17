FROM nginx:alpine

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/conf.d /etc/nginx/conf.d
COPY nginx/ssl /etc/nginx/ssl

RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 443

ENTRYPOINT []

CMD ["nginx","-g", "daemon off;"]
