resource "aws_route53_record" "alb_alias" {
  zone_id = "${local.zone_id}"
  name    = "service.${local.root_domain_name}"
  type    = "A"

  alias {
    name                   = "${module.alb.alb_dns_name}"
    zone_id                = "${module.alb.alb_zone_id}"
    evaluate_target_health = true
  }
}

module "alb" {
  source             = "git::https://github.com/tmknom/terraform-aws-alb.git?ref=tags/1.3.0"
  name               = "app"
  vpc_id             = "${local.vpc_id}"
  subnets            = "${local.subnet_ids}"
  access_logs_bucket = "${module.s3_lb_log.s3_bucket_id}"
  certificate_arn    = "${local.certificate_arn}"

  # WARNING: If in production environment, you should delete this parameter.
  #          This parameter can cause service down.
  enable_deletion_protection = "${var.enable_destruction ? false : true}"
}

module "s3_lb_log" {
  source                = "git::https://github.com/tmknom/terraform-aws-s3-lb-log.git?ref=tags/1.0.0"
  name                  = "lb-log-${local.account_id}"
  logging_target_bucket = "${local.s3_access_log_bucket_id}"

  # WARNING: If in production environment, you should delete this parameter.
  #          This parameter can cause be lost log.
  force_destroy = "${var.enable_destruction}"
}
