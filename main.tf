terraform {
  required_version = "~> 0.12"

  required_providers {
    aws = ">= 2.7.0"
  }

  backend "s3" {
    bucket  = "terraform-state-jaredready-root"
    key     = "root/core/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

provider aws {
  version = "~> 2.0"
  region  = "us-east-1"
  profile = var.aws_profile
}

#
# Variables
#
variable aws_profile {
  default = "default"
}
