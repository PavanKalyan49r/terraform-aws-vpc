terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.34.0" #aws provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "pavanaws-remote"
    key    = "vpc_test"
    region = "us-east-1"
    dynamodb_table = "pavan-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}