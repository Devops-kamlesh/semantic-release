provider "aws" {
  region = "us-east-1" # You can change this to your preferred AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-12345" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Defines who can access the bucket. Options include: private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write.

  tags = {
    Name        = "My S3 Bucket"
    Environment = "Development"
  }
}