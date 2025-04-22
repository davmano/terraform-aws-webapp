# 🚀 Terraform AWS Web App Infrastructure

This project builds a fully functional web app infrastructure on AWS using Terraform — completely modularized and ready for production or portfolio use.

---
#

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Terraform](https://img.shields.io/badge/IaC-Terraform-623CE4?logo=terraform&logoColor=white)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazonaws&logoColor=white)](https://aws.amazon.com/)

## ✅ Features

- VPC with public subnet
- Internet Gateway and routing
- EC2 instance (Ubuntu with NGINX)
- S3 bucket with versioning
- IAM role with scoped S3 access
- SSH access to EC2
- Modular Terraform structure
- Outputs for IP, bucket name, and SSH

---

Run Terraform 
-
- terraform init
- terraform apply 
---

SSH Access
-  
ssh -i webapp-key.pem ubuntu@3.148.175.108

Upload Test 
-
- echo "Test from EC2" > test.txt
aws s3 cp test.txt s3:///webapp-bucket-76a3b10c/

---

Clean Up
-
terraform destroy 

## 📁 Project Structure

```bash
terraform-aws-webapp/
├── main.tf
├── variables.tf
├── outputs.tf
└── modules/
    ├── vpc/
    ├── security_group/
    ├── ec2/
    ├── s3/
    └── iam/

