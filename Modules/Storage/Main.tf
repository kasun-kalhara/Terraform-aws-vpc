resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-kasun"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}