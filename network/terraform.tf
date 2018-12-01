terraform {
  required_version = "= 0.11.10"

  backend "s3" {
    key    = "network/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
