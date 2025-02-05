# Use the official Nginx image as the base image
FROM nginx:latest

# Copy custom nginx configuration to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static content (HTML, CSS, JS) to the web root
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
