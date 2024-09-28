# FROM java:8-jre
# // MAINTAINER Nikita Podshivalov <nikitap4.92@gmail.com>

# ADD ./build/libs/country_bank-1.0.jar /application/
# CMD ["java", "-jar", "/application/country_bank-1.0.jar"]

# EXPOSE 8000


# Use the official Nginx image as base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the content of the Band Website repository into the container
COPY . .

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
