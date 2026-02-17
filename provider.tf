provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket         = "chamu2-terraform-state-bucket"
    key            = "vpc/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
