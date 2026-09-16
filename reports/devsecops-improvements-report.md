# DevSecOps Improvement Report

## Objective

Integrate security practices into the existing DevOps CI/CD workflow.

## Existing Workflow

Developer
   |
   v
GitHub
   |
   v
Jenkins
   |
   v
Build
   |
   v
Docker Image
   |
   v
Deployment

## Improved DevSecOps Workflow

Developer
   |
   v
GitHub
   |
   v
Checkout
   |
   v
Build
   |
   v
Unit Tests
   |
   v
Docker Build
   |
   v
Trivy Security Scan
   |
   +---- Vulnerability Found ----> Fix
   |
   v
Approved Image
   |
   v
Deployment

## Security Improvements

### 1. Container Vulnerability Scanning

Trivy is used to identify vulnerabilities in Docker images.

### 2. Non-Root Container

The application runs as appuser instead of root.

### 3. Updated Base Image

The Node.js base image was updated from an older Node.js 18 Alpine image to the current LTS Alpine image.

### 4. CI Security Gate

HIGH and CRITICAL vulnerabilities can be configured to fail the CI pipeline.

### 5. YAML-Based Automation

A GitHub Actions workflow was created to automate:

- Source checkout
- Node.js setup
- Dependency installation
- Testing
- Docker image build
- Security scanning

### 6. Least Privilege

The application container does not require root privileges.

### 7. Secret Management

Docker registry credentials should be stored using Jenkins credentials or GitHub Secrets rather than being hard-coded.

### 8. Continuous Security

Security scanning should occur during every build instead of only before release.

## Recommended Future Improvements

- Dependency scanning
- Secret scanning
- SAST
- Image signing
- SBOM generation
- Infrastructure-as-Code scanning
- Kubernetes security scanning
- Centralized logging
- Security monitoring

## Conclusion

Security was moved earlier into the development and CI/CD lifecycle, following DevSecOps principles.
