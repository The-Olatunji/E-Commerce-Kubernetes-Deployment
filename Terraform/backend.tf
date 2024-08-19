terraform {
  backend "s3" {
    bucket = var.bucket_name
    key = var.bucket_key
    region = var.region
    dynamodb_table = var.db_table
    encrypt        = true
  }
}