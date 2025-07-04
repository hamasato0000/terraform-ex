terraform {
  required_version = "~> 1.12"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket              = "terraform-ex-dev-terraform-state"
    key                 = "terraform.tfstate"
    use_lockfile        = true # DynamoDBなしでステートロック可能
    region              = "ap-northeast-1"
    allowed_account_ids = ["637423398840"]
    profile             = "terraform-ex-dev-terraform-user"
  }
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = "terraform-ex-dev-terraform-user"
}
