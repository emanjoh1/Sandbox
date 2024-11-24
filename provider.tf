terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

terraform { 
  cloud { 
    
    organization = "Babs45" 

    workspaces { 
      name = "sandbox" 
    } 
  } 
}