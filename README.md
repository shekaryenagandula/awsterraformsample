# Terraform AWS Infrastructure

This repository contains Terraform code for deploying AWS infrastructure. The code is hosted on GitLab and is integrated with a CI/CD pipeline.

## Overview

The infrastructure is defined using Terraform and includes the following components:

- Compute resources
- Networking resources

The code is versioned, reusable, and shareable. The pipeline is used to manage low-level and high-level components, incorporate GitOps deployments, and use Infrastructure-as-Code (IaC) workflows.

## GitLab Integration

The integration with GitLab and Terraform happens through GitLab CI/CD. The Terraform template is added to the project using the `include` attribute in the `.gitlab-ci.yml` file. The pipeline stages include test, validate, build, and deploy. Terraform commands such as test, validate, plan, and plan-json are run, and the apply is run only on the default branch. The pipeline also checks for security problems using IaC Scanning.

## GitHub Migration

The code is now being migrated to GitHub. You can find the code at https://github.com/shekaryenagandula/awsterraformsample
