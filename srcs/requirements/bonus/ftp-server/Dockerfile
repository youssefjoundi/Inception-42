# Use a base image
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && \
    apt-get install -y vsftpd

# Copy configuration file
COPY vsftpd.conf /etc/vsftpd.conf


RUN service start

# Expose FTP port
EXPOSE 21

# Start the FTP server
CMD ["bash", "docker-entrypoint.sh"]
