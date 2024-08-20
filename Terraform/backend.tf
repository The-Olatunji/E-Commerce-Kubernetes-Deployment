terraform {
  backend "s3" {
    bucket = "tophe-terraform-state"
    key = "terraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "terraform-lock" 
    encrypt        = true
  }
}