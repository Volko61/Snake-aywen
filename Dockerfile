FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY tuto/ /usr/share/nginx/html/tuto/
COPY assets/ /usr/share/nginx/html/assets/
EXPOSE 80
