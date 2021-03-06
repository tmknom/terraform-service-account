data "terraform_remote_state" "network" {
  backend = "s3"

  config {
    key    = "network/terraform.tfstate"
    region = "ap-northeast-1"
    bucket = "${var.terraform_backend_bucket_name}"
  }
}

data "terraform_remote_state" "audit" {
  backend = "s3"

  config {
    key    = "audit/terraform.tfstate"
    region = "ap-northeast-1"
    bucket = "${var.terraform_backend_bucket_name}"
  }
}

variable "terraform_backend_bucket_name" {
  type        = "string"
  description = "The Bucket Name of the terraform backend."
}
