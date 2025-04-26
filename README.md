# Ubuntu Practice Container

This project provides a lightweight Ubuntu environment inside Docker for practicing Linux commands.

## Features
- Based on `ubuntu:latest`
- Preinstalled common utilities: `sudo`, `vim`, `nano`, `curl`, `wget`, `net-tools`, `ping`, etc.
- Runs as non-root user `admin1`
- Default working directory `/home/admin1`
- Supports volume mount for persistent file storage

## Quick Start

### 1. Clone this repository
```bash
git clone https://github.com/YourUsername/DockerUbuntu-prac.git
cd DockerUbuntu-prac
