output "elasticache_replication_group_id" {
  value       = "${module.redis.elasticache_replication_group_id}"
  description = "The ID of the ElastiCache Replication Group."
}

output "elasticache_replication_group_primary_endpoint_address" {
  value       = "${module.redis.elasticache_replication_group_primary_endpoint_address}"
  description = "The address of the endpoint for the primary node in the replication group."
}

output "elasticache_replication_group_member_clusters" {
  value       = "${module.redis.elasticache_replication_group_member_clusters}"
  description = "The identifiers of all the nodes that are part of this replication group."
}

output "elasticache_parameter_group_id" {
  value       = "${module.redis.elasticache_parameter_group_id}"
  description = "The ElastiCache parameter group name."
}

output "elasticache_security_group_id" {
  value       = "${module.redis.security_group_id}"
  description = "The ID of the Redis ElastiCache security group."
}

output "elasticache_security_group_arn" {
  value       = "${module.redis.security_group_arn}"
  description = "The ARN of the Redis ElastiCache security group."
}

output "elasticache_security_group_vpc_id" {
  value       = "${module.redis.security_group_vpc_id}"
  description = "The VPC ID of the Redis ElastiCache security group."
}

output "elasticache_security_group_owner_id" {
  value       = "${module.redis.security_group_owner_id}"
  description = "The owner ID of the Redis ElastiCache security group."
}

output "elasticache_security_group_name" {
  value       = "${module.redis.security_group_name}"
  description = "The name of the Redis ElastiCache security group."
}

output "elasticache_security_group_description" {
  value       = "${module.redis.security_group_description}"
  description = "The description of the Redis ElastiCache security group."
}

output "elasticache_security_group_ingress" {
  value       = "${module.redis.security_group_ingress}"
  description = "The ingress rules of the Redis ElastiCache security group."
}

output "elasticache_security_group_egress" {
  value       = "${module.redis.security_group_egress}"
  description = "The egress rules of the Redis ElastiCache security group."
}
