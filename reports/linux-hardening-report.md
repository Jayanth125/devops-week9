# Linux Hardening Report

## Objective

Apply basic Linux security hardening practices to the Ubuntu development environment.

## Checks Performed

### 1. Operating System

Command:

cat /etc/os-release

Purpose:
Identify the Ubuntu operating system version.

### 2. Listening Ports

Command:

sudo ss -ltnp

Purpose:
Identify services listening for network connections.

### 3. Running Services

Command:

systemctl --type=service --state=running

Purpose:
Review currently running services.

### 4. Firewall

Command:

sudo ufw status verbose

Purpose:
Review firewall configuration.

### 5. Automatic Security Updates

Package installed:

unattended-upgrades

Purpose:
Automatically apply available security updates.

### 6. Container User Security

The Dockerfile was improved to run the application using a non-root user:

appuser

Verification:

docker exec week9-app whoami

Expected result:

appuser

## Security Improvements

- Reviewed running services.
- Reviewed listening network ports.
- Installed unattended security updates.
- Reviewed firewall status.
- Configured the Docker container to run as a non-root user.
- Avoided unnecessary privileged container execution.

## Conclusion

Basic Linux and container hardening practices were applied and documented.
