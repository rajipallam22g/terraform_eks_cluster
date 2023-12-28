
# create s3 bucket
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my-bucket-224" # 
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "dynamo_db_table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

