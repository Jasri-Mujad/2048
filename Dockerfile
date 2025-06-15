FROM ubuntu:22.04

# Install required packages
RUN apt-get update && apt-get install -y nginx zip curl

# Download and install the 2048 game
RUN curl -o /var/www/html/master.zip -L https://codeload.github.com/gabrielecirulli/2048/zip/master && \
    cd /var/www/html/ && \
    unzip master.zip && \
    mv 2048-master/* . && \
    rm -rf 2048-master master.zip

# Expose HTTP port
EXPOSE 80

# Run nginx in foreground
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
