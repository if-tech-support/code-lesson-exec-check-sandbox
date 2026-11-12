provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      Project = "reservation-practice"
      Env     = var.env
    }
  }
}

data "aws_caller_identity" "current" {}

module "uploads" {
  source = "./modules/app_bucket"

  name            = "reservation-practice-uploads-${var.env}-${data.aws_caller_identity.current.account_id}"
  noncurrent_days = var.uploads_noncurrent_days
  force_destroy   = var.force_destroy
}
