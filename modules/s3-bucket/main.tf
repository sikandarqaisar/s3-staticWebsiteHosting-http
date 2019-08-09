

resource "aws_s3_bucket" "static-files" {
  bucket = "${var.bucketName}"
  acl    = "private"


  website {
    index_document = "index.html"
    error_document = "404.html"
  }

  tags = {
    Name        = "${var.bucketName}"
    Environment = "${var.Environment}"
  }
}
