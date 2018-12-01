module "alb" {
  source             = "git::https://github.com/tmknom/terraform-aws-alb.git?ref=tags/1.3.0"
  name               = "app"
  vpc_id             = "${local.vpc_id}"
  subnets            = "${local.subnet_ids}"
  access_logs_bucket = "${module.s3_lb_log.s3_bucket_id}"
  certificate_arn    = "${local.certificate_arn}"
}

module "s3_lb_log" {
  source                = "git::https://github.com/tmknom/terraform-aws-s3-lb-log.git?ref=tags/1.0.0"
  name                  = "lb-log-${local.account_id}"
  logging_target_bucket = "${local.s3_access_log_bucket_id}"
}
