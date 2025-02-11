terraform {
  backend "s3" {
    bucket = "my-tf-test-bucket-kasun"
    region = "us-east-1"
    key = "dev/terraform.tfstate"
  
  }
 
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}


module "Vpc" {
  source = "./Modules/Vpc"
}

module "compute"{
  source = "./Modules/Compute"
  
}

module "Storage" {
  source = "./Modules/Storage"
}