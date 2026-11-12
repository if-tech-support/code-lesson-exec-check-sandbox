terraform {
  required_version = ">= 1.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  # state の置き場所
  backend "s3" {
    bucket       = "reservation-practice-tfstate-123456789012"
    key          = "app/terraform.tfstate"
    region       = "ap-northeast-1"
    use_lockfile = true
  }
}
