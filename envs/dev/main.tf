terraform {
  required_version = "~> 1.12"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket       = "terraform-ex-dev-terraform-state"
    key          = "terraform.tfstate"
    use_lockfile = true # DynamoDBなしでステートロック可能
    region       = "ap-northeast-1"
  }
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = var.is_aws_profile_used ? var.aws_profile : null
}

module "dev" {
  source = "../../"

  aws_profile = var.aws_profile
}
