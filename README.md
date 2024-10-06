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

## Important Points 

### How to Write HCL:

```hcl
<block> <parameter> {
    <arguments>
}
```

### First Step:

**Initialize Terraform:**

```bash
terraform init
```

### Second Step:

**Connect Your Cloud Provider:**  
In this example, I am using AWS with Terraform.

1. **Terraform → AWS:** 
   - Set up IAM (Identity and Access Management) with a user that has the necessary credentials.
   
```plaintext
Terraform ---> AWS --- IAM [User with credentials]
  ^                                                    |
  |____________________________________________________|
```

![image](https://github.com/user-attachments/assets/1ed76bcd-2184-4e87-9b02-80c986d7a44e)

--> Use user credentials to connect AWS to your local machine

![image](https://github.com/user-attachments/assets/225c2c8e-f9a0-45ff-9d95-bc1bf6091121)

2. **AWS CLI**

   - Choose Valid AWS CLI version and install it

![image](https://github.com/user-attachments/assets/20558083-da7e-4637-9430-9d5135613df6)

     
3. **AWS Configure**

![image](https://github.com/user-attachments/assets/3a5b2660-1a1d-4456-a897-cc0f1e48d0c6)

4. **Terraform Provider**

![image](https://github.com/user-attachments/assets/c7972dbd-241e-4032-a0d3-31e642c9dab9)

5. **Terraform init**

![image](https://github.com/user-attachments/assets/56d522b2-83a6-49da-a609-349d8a4e718b)


## Terraform Project Structure

![image](https://github.com/user-attachments/assets/e2c6750d-fc09-4402-9495-3db59b039b11)

### Create S3 bucket using code

1) **Terraform Plan**
2) **Terraform Apply**

![image](https://github.com/user-attachments/assets/14c6d35a-b9c9-4322-bc63-11ee7eef3403)

### Create EC2 instance using code

![image](https://github.com/user-attachments/assets/2b6bffd9-3735-437b-bd56-3f21aec17b7f)

--> Security group, VPC, Key Pair[ssh-keygen]

![image](https://github.com/user-attachments/assets/5144465f-df4f-43d2-9b8f-04d705f574b3)


### Create DynamoDB using code

![image](https://github.com/user-attachments/assets/9b56cab6-f03d-4bcd-b4cb-198c1841b5a2)

### Output

I want to see public ip of my ec2 instance
![image](https://github.com/user-attachments/assets/d88fecb0-ec7b-4bc9-81bd-4cc2bf1eb226)

### Terraform destroy 

For all instance deletion : Terraform Destroy
For specific instance : terraform destroy --target = aws_instance.my_instance


