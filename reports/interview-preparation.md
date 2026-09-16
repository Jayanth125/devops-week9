# DevOps Interview Preparation

## 1. What is DevOps?

DevOps is a set of practices that combines development and operations to improve collaboration, automation and continuous software delivery.

## 2. What is CI/CD?

CI means Continuous Integration.

CD can mean Continuous Delivery or Continuous Deployment.

CI/CD automates activities such as building, testing and deploying applications.

## 3. What is Docker?

Docker is a containerization platform used to package applications and their dependencies into portable containers.

## 4. What is a Docker image?

A Docker image is a packaged template used to create containers.

## 5. What is a Docker container?

A container is a running instance of a Docker image.

## 6. What is Jenkins?

Jenkins is an automation server commonly used to implement CI/CD pipelines.

## 7. What is Git?

Git is a distributed version control system.

## 8. What is GitHub?

GitHub is a platform for hosting Git repositories and collaborating on source code.

## 9. What is DevSecOps?

DevSecOps integrates security practices throughout the DevOps lifecycle.

## 10. What is Trivy?

Trivy is a security scanner that can identify vulnerabilities in container images and other targets.

## 11. Why should containers not run as root?

Running applications as a non-root user follows the principle of least privilege and reduces the impact of a potential container compromise.

## 12. What is YAML?

YAML is a human-readable data serialization format commonly used for configuration and automation.

## 13. What is Infrastructure as Code?

Infrastructure as Code allows infrastructure to be defined and managed using configuration files.

Examples:

- Terraform
- CloudFormation

## 14. What is Kubernetes?

Kubernetes is a container orchestration platform used to deploy, scale and manage containerized applications.

## 15. What is a rolling deployment?

A rolling deployment gradually replaces old application instances with new ones.

## 16. What is blue-green deployment?

Blue-green deployment maintains two environments and switches traffic from the old environment to the new environment.

## 17. How do you troubleshoot a Docker container?

I would check:

docker ps

docker logs <container>

docker inspect <container>

docker exec <container> <command>

I would then check ports, environment variables, application errors and resource usage.

## 18. How do you troubleshoot a failed Jenkins pipeline?

I would:

1. Identify the failed stage.
2. Read the console output.
3. Check source-code changes.
4. Verify dependencies.
5. Check Docker/build errors.
6. Reproduce the issue manually.
7. Apply the fix.
8. Run the pipeline again.

## 19. How can security be added to CI/CD?

Security can be integrated through:

- SAST
- Dependency scanning
- Secret scanning
- Container scanning
- IaC scanning
- Security gates

## 20. Explain your Week 9 project.

I reviewed an existing CI/CD workflow and improved it with YAML automation, Linux hardening, container security and Trivy vulnerability scanning. I also changed the 
Docker container to run as a non-root user and documented the DevSecOps improvements.

