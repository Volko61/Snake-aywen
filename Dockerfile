FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY fonts/ /usr/share/nginx/html/fonts/
COPY img/ /usr/share/nginx/html/img/
COPY snake/ /usr/share/nginx/html/snake/
EXPOSE 80
