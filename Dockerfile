FROM nginx

COPY ./book /usr/share/nginx/html

EXPOSE 80
