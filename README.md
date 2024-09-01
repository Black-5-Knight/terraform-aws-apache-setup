# Terraform AWS Apache Setup

## Introduction

This project demonstrates how to use Terraform to automate the setup of a basic AWS infrastructure. The infrastructure includes a Virtual Private Cloud (VPC), a public subnet, an Internet Gateway, and an EC2 instance with Apache installed. This repository is intended for anyone interested in learning about Infrastructure as Code (IaC) using Terraform and deploying resources on AWS.

## Architecture Diagram

Below is a visual representation of the infrastructure set up by this Terraform code:

![AWS Infrastructure Diagram](./infrastructure-diagram.png)

## Table of Contents

- [Introduction](#introduction)
- [Architecture Diagram](#architecture-diagram)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Installation and Setup](#installation-and-setup)
- [Usage](#usage)
- [Outputs](#outputs)
- [Cleanup](#cleanup)
- [Contributing](#contributing)
- [License](#license)
- [Contact Information](#contact-information)

## Project Structure

The project is organized into the following files and directories:

```plaintext
/your-repo-name/
│
├── /terraform/                 # Contains all Terraform configuration files
│   ├── ec2.tf                  # Configuration for the EC2 instance
│   ├── internet_gateway.tf     # Configuration for the Internet Gateway
│   ├── outputs.tf              # Configuration for Terraform output values
│   ├── provider.tf             # AWS provider configuration
│   ├── script.sh               # Bash script for installing Apache on EC2
│   ├── security_group.tf       # Security Group configuration
│   ├── ssh_key_pair.tf         # SSH Key Pair configuration for EC2 access
│   ├── value.auto.tfvars       # Variable values (keep sensitive information here)
│   ├── variables.tf            # Variable definitions used in the Terraform configurations
│   ├── vpc.tf                  # VPC and Subnet configuration
│
├── README.md                   # Project documentation
