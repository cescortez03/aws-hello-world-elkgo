terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.7.0"
    }
  }
}

provider "aws" {
  default_tags {
    tags = {
      environment = var.environment
    }
  }
}

