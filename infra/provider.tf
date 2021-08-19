provider "aws" {
  region = var.aws_region
}


terraform {
  backend "s3" {
    bucket = "tf-state-igti"
    key    = "state/edc-igti/mod1/terraform.tfstate"
    region = "us-east-2"
  }
}
