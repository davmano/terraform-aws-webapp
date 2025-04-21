resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "webapp_bucket" {
  bucket        = "${var.name}-${random_id.bucket_id.hex}"
  force_destroy = true

  tags = {
    Name        = var.name
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "webapp_versioning" {
  bucket = aws_s3_bucket.webapp_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

