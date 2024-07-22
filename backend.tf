terraform {
  cloud {
    organization = "jontehashi"

    workspaces {
      name = "jontehashi_1cli"
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
  region  = var.aws_region
}