terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.48.0"
    }
  }

  backend "s3" {
    bucket = "eduardo-cavalieri"
    key    = "aws-vpc/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = var.location

  default_tags {
    tags = {
      owner      = "educavalieri"
      managed-by = "terraform"
    }
  }
}