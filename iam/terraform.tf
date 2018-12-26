terraform {
  required_version = "= 0.11.11"

  backend "s3" {
    key    = "iam/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
