module "vpc" {
  source     = "git::https://github.com/tmknom/terraform-aws-vpc.git?ref=tags/1.1.0"
  cidr_block = "${local.cidr_block}"
  name       = "service"

  public_subnet_cidr_blocks = ["${cidrsubnet(local.cidr_block, 8, 0)}", "${cidrsubnet(local.cidr_block, 8, 1)}"]
  public_availability_zones = ["ap-northeast-1a", "ap-northeast-1c"]

  private_subnet_cidr_blocks = ["${cidrsubnet(local.cidr_block, 8, 64)}", "${cidrsubnet(local.cidr_block, 8, 65)}"]
  private_availability_zones = ["ap-northeast-1a", "ap-northeast-1c"]

  # NOTE: If in production environment, it's recommended to set false at enabled_single_nat_gateway.
  #       If you have resources in multiple Availability Zones and they share one NAT Gateway, in the event that
  #       the NAT Gateway’s Availability Zone is down, resources in the other Availability Zones lose internet access.
  enabled_single_nat_gateway = true
}

module "alb_certificate" {
  source      = "git::https://github.com/tmknom/terraform-aws-acm-certificate.git?ref=tags/1.1.0"
  domain_name = "${local.certificate_domain_name}"
  zone_id     = "${local.zone_id}"

  enabled = "${local.enabled_certificate}"
}
