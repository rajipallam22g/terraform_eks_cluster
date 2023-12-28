/*provider "aws" {
  region = "ap-southeast-2"  # Change to your desired AWS region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "mybucket1224"  # Change to your desired bucket name

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
*/

