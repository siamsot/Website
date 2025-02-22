# Use a lightweight base image with Nginx
FROM nginx:alpine

# Copy your HTML, CSS, images, etc. into the Nginx default directory
COPY frontend/ /usr/share/nginx/html

# Expose port 80 (the default port for Nginx)
EXPOSE 80

# Nginx starts by default, so no need for a CMD instruction
