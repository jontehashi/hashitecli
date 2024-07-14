terraform {
  cloud {
    organization = "organization-name"
    workspaces {
      name = "learn-terraform-aws"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  
}

provider "aws" {
  region  = "us-east-1"
}