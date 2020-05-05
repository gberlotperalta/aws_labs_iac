
variable "ami_id" {
  default = "ami-085925f297f89fce1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_count" {
  default = "2"
}

variable "associate_public_ip_address" {
  default = "false"
}

variable "source_dest_check" {
  default = "true"
}

variable "vpc_security_group_ids" {
  default = []
}

variable "tags" {
  default = {}
}

variable "key_name" {}

variable "subnet_id" {}

variable "iam_instance_profile" {}

variable "user_data" {}