Terraform AWS VPC Module

This project automates the provisioning of an AWS Virtual Private Cloud (VPC) using Terraform. It includes the creation of subnets, route tables, Internet Gateway, NAT Gateway, and all required networking components to build a highly available and secure infrastructure on AWS.

🚀 Features

Create a custom VPC with CIDR block

Public and private subnets across multiple Availability Zones

Internet Gateway for public subnet access

NAT Gateway for private subnet outbound access

Route tables and route associations

Modular and reusable Terraform code

📁 Module Structure

.
├── main.tf              # Main Terraform configuration
├── variables.tf         # Input variables
├── outputs.tf           # Output values
├── provider.tf          # AWS provider configuration
├── terraform.tfvars     # Variable values
├── vpc/                 # Terraform module for VPC
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
└── README.md

🔧 Usage

module "vpc" {
  source               = "./vpc"
  region               = "us-east-1"
  vpc_cidr_block       = "10.0.0.0/16"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zones   = ["us-east-1a", "us-east-1b"]
  enable_nat_gateway   = true
}

✅ Prerequisites

Terraform installed

AWS CLI configured with appropriate credentials

🚀 Getting Started

git clone https://github.com/kasun-kalhara/Terraform-aws-vpc.git
cd Terraform-aws-vpc
terraform init
terraform plan
terraform apply

📦 Outputs

VPC ID

Subnet IDs (public and private)

NAT Gateway ID

Route Table IDs
