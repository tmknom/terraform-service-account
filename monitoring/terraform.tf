terraform {
  required_version = "= 0.11.11"

  backend "s3" {
    key    = "monitoring/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
