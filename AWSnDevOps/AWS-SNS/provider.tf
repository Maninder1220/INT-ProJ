# First defining Source and Version of Provider

terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = var.provider_version
    }
  }
}


# Creating Provider block

provider "aws" {
  region = var.provider_region
}