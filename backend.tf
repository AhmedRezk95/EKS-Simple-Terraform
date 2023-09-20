terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.5.0"
    }
  }

  backend "s3" {
    # set your own bucket for tfstate file / dynamoDB statelock file
    bucket         = "rizk-eks-statefile"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "eks-rizk-test"
  }
}
