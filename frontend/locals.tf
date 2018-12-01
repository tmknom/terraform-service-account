locals {
  s3_access_log_bucket_id = "${data.terraform_remote_state.audit.s3_access_log_bucket_id}"
  account_id              = "${data.aws_caller_identity.current.account_id}"
}

data "aws_caller_identity" "current" {}
