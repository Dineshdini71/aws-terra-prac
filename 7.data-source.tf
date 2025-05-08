data "aws_vpc" "manage_vpc" {
  id = "vpc-01adeef9c500ef3e5"
}

data "aws_route_table" "one_vpc_RT_ID" {
  route_table_id = "rtb-07bdbf208ce9ba1c4"
}

# Established the peering connection
resource "aws_vpc_peering_connection" "manage_vpc_peering" {
  peer_vpc_id = data.aws_vpc.manage_vpc.id
  vpc_id      = aws_vpc.terra_vpc1.id
  auto_accept = true
  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }
}

# Accepter for above vpc 

# Accepter's side of the connection.
resource "aws_vpc_peering_connection_accepter" "peer" {
  vpc_peering_connection_id = aws_vpc_peering_connection.manage_vpc_peering.id
  auto_accept               = true

  tags = {
    Side = "Accepter"
  }
}

# Adding route to the Terra_Vpc to OneVpc

resource "aws_route" "from_terra_to_one-vpc" {
  route_table_id            = aws_route_table.terra_RT.id
  destination_cidr_block    = "10.1.0.0/16"
  vpc_peering_connection_id = aws_vpc_peering_connection.manage_vpc_peering.id
  depends_on                = [aws_route_table.terra_RT]
}

# Adding route to the OneVpc to Terra_Vpc

resource "aws_route" "from_one-vpc_to_terra_" {
  route_table_id            = data.aws_route_table.one_vpc_RT_ID.id
  destination_cidr_block    = var.nv_vpc1_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.manage_vpc_peering.id
  depends_on                = [aws_route_table.terra_RT]
}