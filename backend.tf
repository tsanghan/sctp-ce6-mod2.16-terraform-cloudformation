terraform {
  backend "s3" {
    bucket = "sctp-ce6-tfstate"
    key    = "tsanghan-ce6-mod2_16-terraform-cloudformation-s3-bucket.tfstate"
    region = "ap-southeast-1"
  }
  required_version = "~> 1.7.3"
}