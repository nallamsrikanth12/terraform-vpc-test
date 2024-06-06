terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.52.0"
    }
  }
  backend "s3" {
    bucket = "expense-dev-project"
    key    = "vpc-new-module"
    region = "us-east-1"
    dynamodb_table =  "expense-dev-locking"
  }

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}