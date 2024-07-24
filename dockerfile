# Use an official Ubuntu runtime as a parent image
FROM ubuntu:20.04

# Set environment variables to prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay python3 && \
    apt-get clean

# Copy the application files
COPY wisecow.sh /app/wisecow.sh

# Make the wisecow.sh script executable
RUN chmod +x /app/wisecow.sh

# Expose the default port
EXPOSE 4499

# Run the wisecow application
CMD ["/app/wisecow.sh"]
