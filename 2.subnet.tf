resource "aws_subnet" "terra_subnet1" {
  vpc_id            = aws_vpc.terra_vpc1.id
  cidr_block        = var.nv_cidr_subnet_1
  availability_zone = "us-east-1a"
  tags = {
    Name = "${var.vpc_name}subnet-1"
  }
}

resource "aws_subnet" "terra_subnet2" {
  vpc_id            = aws_vpc.terra_vpc1.id
  cidr_block        = var.nv_cidr_subnet_2
  availability_zone = "us-east-1b"
  tags = {
    Name = "${var.vpc_name}subnet-2"
  }
}

resource "aws_subnet" "terra_subnet3" {
  vpc_id            = aws_vpc.terra_vpc1.id
  cidr_block        = var.nv_cidr_subnet_3
  availability_zone = "us-east-1c"
  tags = {
    Name = "${var.vpc_name}subnet-3"
  }
}