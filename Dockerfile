# Use an official Nginx image as a base
FROM nginx:latest

# Copy the index.html file to the default Nginx directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
