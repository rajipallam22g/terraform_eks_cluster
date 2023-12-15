terraform {
  backend "s3" {
    bucket         = "mybucketeks10"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "dynamo_db_table"
  }
}

