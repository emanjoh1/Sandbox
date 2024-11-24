terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "remote" {
    organization = "Babs45"
    workspaces {
      name = "sandbox"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
