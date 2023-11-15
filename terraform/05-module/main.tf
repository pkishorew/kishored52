module "network" {
  source = "./network"
}

module "ec2" {
  count = 2
  depends_on = [module.network]
  source = "./ec2"
  sgid  = module.network.sg-id
}


provider "aws" {
  region = "us-east-1"
}