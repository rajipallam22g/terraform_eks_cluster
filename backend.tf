terraform {
  backend "s3" {
    bucket         = "mybucketeks10"
    key            = "eks/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "dynamo_db_table"
  }
}
terraform {
  backend "local" {
    path = "/var/lib/jenkins/s3state/terraform.state"
  }
}
