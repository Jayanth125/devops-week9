# Linux Hardening Report

## System Review

- Operating System: Ubuntu
- SSH configuration reviewed
- Firewall configuration reviewed
- Listening ports reviewed
- User and sudo configuration reviewed
- Failed SSH login attempts reviewed

## Findings

### 1. SSH Root Login
Root SSH login should be disabled.

### 2. SSH Password Authentication
Password authentication should be disabled when key-based authentication is configured.

### 3. Firewall
Only required ports should be allowed.

### 4. Unnecessary Services
Unused services and open ports should be reviewed and disabled where appropriate.

### 5. Application Container
The application container should run using a non-root user.

## Recommendations

- Disable direct root SSH login.
- Prefer SSH key authentication.
- Enable and configure UFW.
- Remove unnecessary exposed ports.
- Run Docker containers as a non-root user.
- Keep Ubuntu and Docker images updated.
