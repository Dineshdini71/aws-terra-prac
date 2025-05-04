resource "aws_vpc" "terra_vpc1" {
  # Resource Arguments or Aruguments
  cidr_block           = var.nv_vpc1_cidr
  enable_dns_hostnames = true
  tags = {
    Name = "${var.vpc_name}nv_1"
  }
  # lifecycle -> Suppose, If change are made in aws console, Terrform will accept that changes.
  lifecycle {
    ignore_changes = [ 
      tags, 
    ]
  }
}

resource "aws_vpc" "terra_vpc2" {
  cidr_block           = var.nv_vpc2_cidr
  enable_dns_hostnames = true
  tags = {
    Name = "${var.vpc_name}nv_2"
  }
}

#------------------------------------------------------------------------------------------------------
#                                 CREATING VPC IN M_U_M_B_A_I.
# Suppose we a create a two vpc or deploy mutiple instance at a time using the below method.
#    Using alias method, given in provider.tf file. Calling value like provider = aws.mumbai

# resource "aws_vpc" "mumbai-terra_vpc1" {
#   # Resource Arguments or Aruguments
#   provider             = aws.mumbai
#   cidr_block           = var.mumbai_vpc1_cidr
#   enable_dns_hostnames = true
#   tags = {
#     Name = "${var.vpc_name}mumbai"
#   }
# }

# resource "aws_vpc" "mumbai-terra_vpc2" {
#   provider             = aws.mumbai
#   cidr_block           = var.mumbai_vpc2_cidr
#   enable_dns_hostnames = true
#   tags = {
#     Name = "${var.vpc_name}mumbai"
#   }
# }