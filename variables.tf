variable "aws_resource_prefix" {
  description = "Prefix to be used in the naming of some of the created AWS resources e.g. demo-webapp"
  default     = "eks-demo"
}

variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "provider_region" {
  type    = string
  default = "us-east-1"

}

variable "subnet_public1" {
  type    = string
  default = "10.0.1.0/24"
}

variable "subnet_public2" {
  type    = string
  default = "10.0.10.0/24"
}

variable "subnet_private1" {
  type    = string
  default = "10.0.80.0/24"
}

variable "subnet_private2" {
  type    = string
  default = "10.0.5.0/24"
}
