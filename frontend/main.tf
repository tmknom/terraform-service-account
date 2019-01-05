resource "aws_route53_record" "alb_alias" {
  zone_id = "${local.zone_id}"
  name    = "${local.alb_domain_name}"
  type    = "A"

  alias {
    name                   = "${module.alb.alb_dns_name}"
    zone_id                = "${module.alb.alb_zone_id}"
    evaluate_target_health = true
  }
}

module "alb_certificate" {
  source      = "git::https://github.com/tmknom/terraform-aws-acm-certificate.git?ref=tags/1.1.0"
  domain_name = "${local.alb_domain_name}"
  zone_id     = "${local.zone_id}"

  enabled = "${local.enabled_certificate}"
}

module "alb" {
  source             = "git::https://github.com/tmknom/terraform-aws-alb.git?ref=tags/1.5.1"
  name               = "app"
  vpc_id             = "${local.vpc_id}"
  subnets            = "${local.subnet_ids}"
  access_logs_bucket = "${module.s3_lb_log.s3_bucket_id}"
  certificate_arn    = "${module.alb_certificate.acm_certificate_arn}"

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
