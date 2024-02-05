FROM ubuntu:latest

# Update package lists and install Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Expose port 80 for incoming HTTP traffic
EXPOSE 80

# Start Apache in the foreground when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]
