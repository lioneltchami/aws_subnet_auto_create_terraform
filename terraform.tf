terraform {
  backend "s3" {}
}

data "terraform_remote_state" "state" {
  backend = "s3"

  config {
    bucket = "${var.stateBucketName}"
    region = "${var.stateBucketRegion}"
    key    = "${var.stateBucketKey}"
  }
}
