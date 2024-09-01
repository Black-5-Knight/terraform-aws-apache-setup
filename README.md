# Terraform AWS Apache Setup

This project uses Terraform to set up an Apache web server on an EC2 instance within an AWS VPC. The setup includes the following components:

## Components

1. **VPC**: A Virtual Private Cloud with CIDR block `10.0.0.0/16`.
2. **Public Subnet**: A public subnet with CIDR block `10.0.0.0/24`.
3. **Internet Gateway**: An Internet Gateway attached to the VPC for internet access.
4. **Security Group**: A security group to allow inbound HTTP traffic (port 80) and SSH traffic (port 22).
5. **EC2 Instance**: An EC2 instance with Apache installed, configured within the public subnet.
6. **Outputs**: The public IP address of the EC2 instance is outputted for easy access via a web browser.

## Prerequisites

- Terraform installed on your machine.
- AWS CLI configured with appropriate permissions.
- An SSH key pair to access the EC2 instance.

## Getting Started

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/terraform-aws-apache-setup.git
   cd terraform-aws-apache-setup/terraform
