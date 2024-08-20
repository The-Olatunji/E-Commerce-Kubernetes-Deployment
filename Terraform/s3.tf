
# Create the S3 bucket for storing Terraform state
resource "aws_s3_bucket" "terraform_state" {
  bucket = "tophe-terraform-statefile"
  lifecycle {
    prevent_destroy = true
  }
  versioning {
    enabled = false
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }
}