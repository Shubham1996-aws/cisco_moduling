terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.36.1"
    }
  }
  /*backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }*/
}

terraform {
  backend "local" {
    path = "/statefile/terraform.tfstate"
  }
}

provider "aws" {
  region  = var.region
  profile = var.profile
}