terraform {
  required_version = "<= 1.8.3"
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
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "mumbai"
  region = "ap-south-1"
}