
variable "app_name" {
  default = "terra_webapp_"
}

variable "environment_tag" {
  default = "Production"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "vpc_id" {}

variable "subnet_pub_cidr" {
  default = "10.0.1.0/24"
}

variable "subnet_pri_cidr" {
  default = "10.0.2.0/24"
}

variable "availability_zone_pub" {
     default = "us-east-1a"
}

variable "availability_zone_pri" {
     default = "us-east-1a"
}

variable "destination_cidr_block" {
  default = "0.0.0.0/0"
}

variable "ingress_cidr_block" {
  default = "0.0.0.0/0" 
}

variable "egress_cidr_block" {
  default =  "0.0.0.0/0" 
}


