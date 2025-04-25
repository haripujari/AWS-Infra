terraform {
  backend "s3" {
    bucket = "great-name-terraform-state-2"
    key    = "global/s3/terraform.tfstate"
    region = "us-west-2"
    access_key = ${{ secrets.AWS_ACCESS_KEY_ID }}
    secret_key = ${{ secrets.AWS_SECRET_ACCESS_KEY }}
  }
}
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}
