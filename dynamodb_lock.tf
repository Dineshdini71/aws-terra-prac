resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terra_state_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}






#Reference Purpose url : https://www.gruntwork.io/blog/how-to-manage-terraform-state