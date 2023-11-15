variable "sample" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}


// A variable from tfvars

variable "sample1" {}

output "sample1" {
  value = var.sample1
}


// A variable from terraform cli

variable "sample2" {}

output "sample2" {
  value = var.sample2
}

// On CLI ,    terraform apply -auto-approve -var sample2=100

// A variable from ENV Variables

variable "sample3" {}
output "sample3" {
  value = var.sample3
}

// export TF_VAR_sample3=DEMO