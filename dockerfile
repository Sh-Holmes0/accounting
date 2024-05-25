FROM nginx:alpine

# Copy the static website files to the Nginx document root
COPY ./p1.html /usr/share/nginx/html