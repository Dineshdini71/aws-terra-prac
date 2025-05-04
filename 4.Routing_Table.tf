resource "aws_route_table" "terra_RT" {
  vpc_id = aws_vpc.terra_vpc1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terra_IGW.id
  }
  tags = {
    Name = "${var.vpc_name}Main-RT"
  }
}

resource "aws_route_table_association" "terra_RT_1" {
  subnet_id      = aws_subnet.terra_subnet1.id
  route_table_id = aws_route_table.terra_RT.id
}

resource "aws_route_table_association" "terra_RT_2" {
  subnet_id      = aws_subnet.terra_subnet2.id
  route_table_id = aws_route_table.terra_RT.id
}

resource "aws_route_table_association" "terra_RT_3" {
  subnet_id      = aws_subnet.terra_subnet3.id
  route_table_id = aws_route_table.terra_RT.id
}