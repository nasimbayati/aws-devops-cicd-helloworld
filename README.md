# AWS DevOps CI/CD — HelloWorld (GitHub → CodeBuild → S3 → CodeDeploy → EC2)

## What this project demonstrates
A production-style CI/CD workflow that builds a Java web app with AWS CodeBuild, stores artifacts in S3, and deploys to an EC2 (Tomcat) host using AWS CodeDeploy.

## Architecture (high level)
GitHub → CodeBuild → S3 (artifact) → CodeDeploy → EC2 (Tomcat on port 8080)

## Tech used
- AWS: EC2, IAM, S3, CodeBuild, CodeDeploy, CloudWatch Logs
- App: Java + Maven + Tomcat 9
- GitHub SSH auth from EC2 (no static AWS keys on servers)

## Proof it works
- Live endpoint: `http://34.238.43.168:8080/
- Build artifact: `s3://codepipeline-artifacts-nasim-09/helloworld-build/HelloWorld.tar.gz`

## Security notes (lab vs real world)
- This lab opens port 8080 publicly for demo purposes.
- In production, I would put the app behind an ALB + HTTPS and restrict inbound rules.

## Screenshots
See `screenshots/` for build, deploy, and live verification evidence.

## Lessons learned
See `notes/lessons-learned.md`
