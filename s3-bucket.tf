module "s3-bucket" {
  source  = "app.terraform.io/Galex/s3-bucket/aws"
  version = "2.8.0"


  acl    = "private"
  # bucket_prefix = "${var.prefix}"
  bucket        = "${var.prefix}-${random_string.s3.result}"

  versioning = {
    enabled = true
  }
}

resource "random_string" "s3" {
  special = false
  upper   = false
  length  = 8
}