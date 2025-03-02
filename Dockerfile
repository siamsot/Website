# Use a lightweight base image with Nginx
FROM nginx:alpine

ARG DOMAIN_NAME

# Copy your HTML, CSS, images, etc. into the Nginx default directory
COPY frontend/ /usr/share/nginx/html
COPY frontend/website.conf /etc/nginx/conf.d/default.conf
RUN sed -i "s|\${DOMAIN_NAME}|${DOMAIN_NAME}|g" /etc/nginx/conf.d/default.conf
# Expose port 80 (the default port for Nginx)
EXPOSE 80

# Nginx starts by default, so no need for a CMD instruction
