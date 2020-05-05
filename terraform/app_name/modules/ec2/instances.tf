resource "aws_instance" "ec2server" {
  subnet_id     = "${var.subnet_id}"
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  count         = "${var.ec2_count}"
  key_name      = "${var.key_name}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  source_dest_check = "${var.source_dest_check}"
  vpc_security_group_ids = "${var.vpc_security_group_ids}" 
  iam_instance_profile = "${var.iam_instance_profile}"
  user_data = "${var.user_data}"
  tags = "${var.tags}"
}



