# DockerUbuntu-prac/Dockerfile

# Use official Ubuntu image
FROM ubuntu:latest

# Avoid interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Install basic tools
RUN apt-get update && apt-get install -y \
    sudo \
    vim \
    nano \
    curl \
    wget \
    net-tools \
    iputils-ping \
    less \
    man \
    && apt-get clean

# Create a non-root user (optional but recommended)
RUN useradd -ms /bin/bash admin1 && echo "admin1:admin1" | chpasswd && adduser student sudo

# Switch to the new user
USER admin1

# Set working directory
WORKDIR /home/admin1

# Default command
CMD ["bash"]
