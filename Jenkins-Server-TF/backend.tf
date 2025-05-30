terraform {
  backend "s3" {
    bucket         = "manibaucket"
    region         = "us-east-1"
    key            = "Mern-stack-project/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "Lockfiles"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
