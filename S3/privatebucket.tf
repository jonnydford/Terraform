resource "aws_s3_bucket" "b" {
  bucket = "my_tf_test_bucket"
  acl    = "private"

  tags {
    Name        = "My bucket"
    Environment = "Dev"
  }
}