terraform {
  backend "s3" {
    bucket = "tophe-terraform-statefile"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock" 
    encrypt        = true
  }
}