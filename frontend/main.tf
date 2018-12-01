module "s3_lb_log" {
  source                = "git::https://github.com/tmknom/terraform-aws-s3-lb-log.git?ref=tags/1.0.0"
  name                  = "lb-log-${local.account_id}"
  logging_target_bucket = "${local.s3_access_log_bucket_id}"
}
