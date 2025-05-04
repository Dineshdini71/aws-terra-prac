resource "aws_s3_bucket" "terra_flowlog_bucket_1" {
  bucket = "terraformflowlogbucket1"

  tags = {
    Name        = "${var.vpc_name}FL-1"
    Environment = "Dev"
  }
  depends_on = [ aws_s3_bucket.terra_flowlog_bucket_2 ]
}


resource "aws_s3_bucket" "terra_flowlog_bucket_2" {
  bucket = "terraformflowlogbucket2"

  tags = {
    Name        = "${var.vpc_name}FL-2"
    Environment = "Dev"
  }
  depends_on = [ aws_s3_bucket.terra_flowlog_bucket_3 ]
}


resource "aws_s3_bucket" "terra_flowlog_bucket_3" {
  bucket = "terraformflowlogbucket3"

  tags = {
    Name        = "${var.vpc_name}FL-3"
    Environment = "Dev"
  }
  depends_on = [ aws_route_table_association.terra_RT_3 ]
}