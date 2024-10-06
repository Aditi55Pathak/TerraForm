# Terraform Exercise - Infrastructure as Code

This repository contains an exercise on using Terraform for provisioning infrastructure as code (IaC). In this exercise, I created and managed cloud resources using Terraform's declarative configuration language. This document provides an overview of the project setup, required tools, and steps to run the exercise.

## About Terraform

Terraform (by HashiCorp) is an open-source tool that has transitioned to a business license, meaning it is no longer open source and cannot be forked to design your own version of Terraform. 

### Key Features:
- **Infrastructure as Code (IaC)**: Terraform enables automated infrastructure management, eliminating the need for manual setup in the console and reducing the likelihood of errors.

### How to Write Terraform:
- **Configuration Language**: Terraform uses HCL (HashiCorp Configuration Language) for defining infrastructure.

Terraform facilitates the writing and management of infrastructure. 

### Who Manages the Infrastructure?
This is where **Ansible** comes into the picture. Ansible is a configuration management tool that helps manage the configuration of systems built by Terraform.

### What Can We Do with Terraform?
- Manage **Files**
- Manage **Docker**
- Provision **AWS/Azure Resources**
- Deploy **WordPress**

## Prerequisites

Before running the Terraform scripts in this exercise, make sure you have the following:

1. **Terraform**: Install Terraform on your local machine. You can download it from [here](https://www.terraform.io/downloads.html).
2. **Cloud Provider Account**: Ensure you have an active account with a cloud provider (e.g., AWS, Azure, GCP) and the necessary credentials for provisioning resources.
   - AWS CLI installed and configured (if you're using AWS).

## Project Structure

The repository contains the following key files:

```
terraform-exercise/
│
├── main.tf            # Main configuration file for Terraform
├── variables.tf       # Contains variables used in the configuration
├── outputs.tf         # Defines the outputs of the Terraform resources
├── provider.tf        # Defines the cloud provider configuration
└── README.md          # Documentation (this file)
```

## Overview

The Terraform configuration files define the cloud resources to be created. For this exercise, the infrastructure includes:

- **Compute Resource (EC2 instance, VM, etc.)**
- **Networking Components (VPC, Subnet, etc.)**
- **Storage (S3, etc.)**
- **Security Groups** to control traffic

The resources are managed by the Terraform state file, ensuring that infrastructure is always in sync with the codebase.

## Setup Instructions

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-username/terraform-exercise.git
   cd terraform-exercise
   ```

2. **Initialize Terraform:**

   Run the following command to initialize the working directory containing the Terraform configuration files:

   ```bash
   terraform init
   ```

   This command downloads the necessary provider plugins and prepares the directory for further Terraform operations.

3. **Customize Variables (Optional):**

   Modify the `variables.tf` file to adjust configurations such as instance type, region, or any other resource-specific details.

4. **Validate the Configuration:**

   Before applying the infrastructure, you can validate your Terraform configuration files:

   ```bash
   terraform validate
   ```

5. **Apply the Configuration:**

   Use the following command to create the infrastructure defined in the Terraform files:

   ```bash
   terraform apply
   ```

   This command will prompt for approval. Type `yes` to confirm and proceed with resource creation.

6. **View Outputs:**

   After applying the configuration, Terraform will output information about the created resources as defined in `outputs.tf`. You can also run:

   ```bash
   terraform output
   ```

   to see the outputs.

## Cleanup

To destroy the created infrastructure and clean up your resources, use:

```bash
terraform destroy
```

This will remove all the resources created by Terraform.



