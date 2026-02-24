# Dockerfile
FROM nginx:alpine

# Copy custom files to nginx html directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY image.jpg /usr/share/nginx/html/

# Change Nginx to listen on port 8085
RUN sed -i 's/80;/8085;/' /etc/nginx/conf.d/default.conf

EXPOSE 8085

CMD ["nginx", "-g", "daemon off;"]