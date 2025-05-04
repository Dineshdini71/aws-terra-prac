resource "aws_security_group" "allow_all_traffic" {
  name        = "allow_all_traffic"
  description = "Allow inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.terra_vpc1.id
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.vpc_name}SG"
  }
}