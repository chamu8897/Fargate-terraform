provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = var.state_bucket
    key            = "terraform/state.tfstate"
    region         = var.region
    dynamodb_table = var.lock_table
    encrypt        = true
  }
}