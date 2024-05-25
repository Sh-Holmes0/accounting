# Use the official nginx image as the base
FROM nginx:latest

# Copy the static site content to the container's document root
COPY . /usr/share/nginx/html/

# Define a custom Nginx configuration file
# RUN echo "server {
#   listen 80;

#   # Replace 'index.html' with your actual default file
#   root /usr/share/nginx/html;
#   index index.html;

#   server_name localhost;

#   location / {
#     try_files $uri $uri/ /index.html;
#   }
# }" > /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
