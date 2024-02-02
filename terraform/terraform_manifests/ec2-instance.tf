# Terraform settings/configuration block
terraform {
    # Required Terraform Version
    #required_version = "~> 1.7.2"
    # Required Providers and their Versions
    required_providers {
        aws = {
            source = "hashicorp/aws"
            #version = "~> 3.21" # Optional but recommended(Provider Requirements)
        }
    }
}

# Provider block
provider "aws"{
    profile = "default"
    region = "us-east-1"
}

# Resource block
resource "aws_instance" "ec2demo" {
    ami = "ami-0a3c3a20c09d6f377"
    instance_type = "t2.micro"
}