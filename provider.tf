provider "aws" {
  region = "ap-southeast-2"
  
}

 
 resource "random_string" "suffix" {
  length  = 5
  special = false
}


terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
  }
}
