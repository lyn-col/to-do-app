# Use an official Nginx image as the base image
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the static HTML, CSS, and JavaScript files to the container
COPY index.html /usr/share/nginx/html/index.html

# Copy custom Nginx config to the correct location
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 for the web application
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
