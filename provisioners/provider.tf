terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "6.16.0"
    }
  }
}

 backend "s3" {
    bucket = "remote-state-86s-dev1"
    key    = "remote-state-86s-dev1-demo"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }

provider "aws" {
  region = "us-east-1"
}