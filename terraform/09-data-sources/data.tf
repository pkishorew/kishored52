provider "aws" {
  region = "us-east-1"
}

data "aws_vpc" "sample" {
  filter {
    name = "tag:Name"
    values = ["rb-dev-vpc"]
  }
}

output "vpc" {
  value = data.aws_vpc.sample
}