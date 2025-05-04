resource "aws_internet_gateway" "terra_IGW" {
  vpc_id = aws_vpc.terra_vpc1.id
  tags = {
    Name = "${var.vpc_name}IGW"
  }
}