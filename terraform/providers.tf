# --- root/providers.tf ---

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.20.0"
    }
    awscc = {
      source  = "hashicorp/awscc"
      version = "0.25.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project = var.identifier
      Owner   = "gj"
      IaC     = "terraform"
    }

  }

}

provider "awscc" {
  region = var.aws_region
}

