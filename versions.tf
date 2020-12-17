terraform {
  required_version = ">= 0.13"
  required_providers {
    aws = {
      version = ">=3.21"
      source  = "hashicorp/aws"
      profile = "terraform_user"
    }
  }
}