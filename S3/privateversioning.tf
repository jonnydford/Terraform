resource "aws_s3_bucket" "b" {
  bucket = "my_tf_test_bucket"
  acl    = "private"

  versioning {
    enabled = true
  }
}