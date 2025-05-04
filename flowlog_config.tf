resource "aws_flow_log" "terra_fl" {
  log_destination      = aws_s3_bucket.terra_flowlog_bucket_1.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.terra_vpc1.id
}