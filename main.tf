terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

provider "aws" {
  access_key = "${var.Acccess_Key}"
  secret_key = "${var.Secret_Key}"
  region     = "${var.Region}"
}




