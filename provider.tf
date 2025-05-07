terraform {
  required_version = "<= 1.11.4"
  required_providers {
    aws = {
      version = "<= 5.0.0"
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "terraform-tfstate-buck8"
    key    = "terraform_bucket.tfstate"
    region = "us-east-1"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "terra_state_lock"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "mumbai"
  region = "ap-south-1"
}