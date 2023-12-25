
terraform {
  backend "s3" {
    bucket         = "mybucket3"
    key            = "eks/terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    dynamodb_table = "dynamo_db_table"
  }

