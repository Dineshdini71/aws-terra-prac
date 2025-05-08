resource "aws_instance" "terra_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key
  subnet_id                   = aws_subnet.terra_subnet1.id
  vpc_security_group_ids             = ["${aws_security_group.allow_all_traffic.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "${var.vpc_name}server_1"
  }
}