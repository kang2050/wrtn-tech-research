FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY .htpasswd  /etc/nginx/.htpasswd
COPY web/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
