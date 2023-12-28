
terraform {
  backend "s3" {
    bucket         = "my_aws_eks_B"
    key            = "eks/terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    dynamodb_table = "dynamo_db_table"
  }
}

