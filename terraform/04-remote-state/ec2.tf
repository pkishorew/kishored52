terraform {
  backend "s3" {
    bucket = "d52-terrafrom-states"
    key    = "sample1/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  ami = "ami-052ed3344670027b3"
  instance_type = "t2.micro"
}


