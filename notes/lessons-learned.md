# Lessons Learned — AWS DevOps CI/CD HelloWorld

This document captures key technical and conceptual lessons learned while building and troubleshooting an end-to-end CI/CD pipeline on AWS.

---

## 1. IAM Roles Are the Backbone of AWS DevOps

Using IAM roles instead of access keys is not optional in real-world DevOps.

- CodeBuild, CodeDeploy, and EC2 each require different permissions
- Misconfigured roles break pipelines silently
- Least-privilege policies reduce blast radius and improve security

This project reinforced the importance of designing IAM first, not last.

---

## 2. CI/CD Pipelines Fail More Often Than They Succeed (At First)

Initial pipeline failures were expected and valuable:

- SSH authentication mismatches
- Incorrect repository remotes
- Build artifacts not appearing where expected
- OS-specific metadata causing unexpected issues

Debugging these failures improved my ability to read logs, isolate root causes, and fix issues systematically.

---

## 3. Build Artifacts Are First-Class Citizens

Artifacts are not just files — they are **contracts** between stages.

- CodeBuild must output exactly what CodeDeploy expects
- S3 paths and naming conventions matter
- Small mismatches can break deployments

This highlighted the importance of consistency and documentation in CI/CD.

---

## 4. Local Environment Issues Matter in DevOps

Problems caused by:
- Windows file locking
- OneDrive synchronization
- macOS metadata files

…demonstrated that DevOps is not only about cloud services, but also about understanding developer environments and tooling interactions.

---

## 5. Cost Awareness Is a DevOps Responsibility

Leaving resources running after a successful demo is a common beginner mistake.

This project reinforced:
- The importance of deleting EC2 instances
- Stopping CodeBuild usage
- Cleaning up S3 artifacts when no longer needed

Cost control is part of production readiness.

---

## 6. Documentation Is as Important as Code

Writing a clear README and documenting issues:

- Makes projects reusable
- Makes troubleshooting easier
- Demonstrates professionalism

Good documentation turns a working pipeline into a portfolio-grade project.

---

## Final Reflection

This project transformed abstract DevOps concepts into practical experience.

Instead of just knowing *what* AWS services do, I learned *how they interact*, *how they fail*, and *how to fix them* — which is the essence of DevOps engineering.
