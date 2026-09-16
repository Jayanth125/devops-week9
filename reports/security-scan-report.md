# Week 9 Security Scan Report

## Application

Week 9 DevOps Application

## Container Image

week9-app:1.1 and week9-app:1.2

## Security Tool

Trivy

## Tool Version

Trivy 0.74.0

## Scan Type

Container image vulnerability scanning

## Initial Scan

The initial scan of week9-app:1.1 identified vulnerabilities in packages associated with the Node.js base image.

Examples observed during the scan included vulnerabilities affecting:

- node-tar / tar
- brace-expansion
- ip-address
- other bundled packages

The scan identified HIGH and CRITICAL severity findings.

## Remediation

The Docker base image was upgraded from:

node:18-alpine

to:

node:lts-alpine

The Docker image was also configured to run using a non-root user.

## Security Verification

A second Trivy scan was performed against the updated image:

trivy image --severity HIGH,CRITICAL week9-app:1.2

## Evidence

Initial vulnerable image:

week9-app:1.1

Updated image:

week9-app:1.2

Trivy JSON report:

reports/trivy-report-1.2.json

## Conclusion

Container security scanning was integrated into the Week 9 workflow. Vulnerabilities were identified, the container base image was updated, and the image was rescanned.
