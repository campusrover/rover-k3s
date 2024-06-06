# AWS Setup
variable "aws_access_key" {}
variable "aws_secret_key" {}

provider "aws" {
  region = "us-east-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

variable "ingress_ip_new" {}
variable "ingress_ip_old" {}
