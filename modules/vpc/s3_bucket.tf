provider "aws" {
  region = "ap-south-1"  # Change to your desired AWS region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-unique-s3-bucket-08.11"  # Change to your desired bucket name

}

resource "aws_dynamodb_table" "example_table" {
  name           = "my-dynamodb-table"
  billing_mode   = "PROVISIONED"  # Change to "PROVISIONED" if needed
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "id"
  attribute {
    name = "id"
    type = "S"
  }
}
