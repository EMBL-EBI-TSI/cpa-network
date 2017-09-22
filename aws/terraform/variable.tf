variable "network_name" {
  default     = "cloud-portal"
  description = "The name of the network deployment"
}

variable "vpc_cidr_block" {
  default     = "172.31.0.0/16"
  description = "The cidr block of the referenced VPC"
}

variable "subnet_cidr_block" {
  default     = "172.31.128.0/24"
  description = "The cidr block of the subnet, it has to be a subset of the cidr block of the referenced VPC and has not to conflict with other defined subnets."
}
