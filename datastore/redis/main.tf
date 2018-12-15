module "redis" {
  source                = "git::https://github.com/tmknom/terraform-aws-elasticache-redis.git?ref=tags/1.0.0"
  name                  = "cache-store"
  number_cache_clusters = 2
  node_type             = "cache.m3.medium"

  subnet_ids          = ["${local.private_subnet_ids}"]
  vpc_id              = "${local.vpc_id}"
  ingress_cidr_blocks = ["${local.vpc_cidr_block}"]
}
