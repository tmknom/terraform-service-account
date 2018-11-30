output "vpc_arn" {
  value       = "${module.vpc.vpc_arn}"
  description = "Amazon Resource Name (ARN) of VPC."
}

output "vpc_id" {
  value       = "${module.vpc.vpc_id}"
  description = "The ID of the VPC."
}

output "vpc_cidr_block" {
  value       = "${module.vpc.vpc_cidr_block}"
  description = "The CIDR block of the VPC."
}

output "vpc_instance_tenancy" {
  value       = "${module.vpc.vpc_instance_tenancy}"
  description = "Tenancy of instances spin up within VPC."
}

output "vpc_enable_dns_support" {
  value       = "${module.vpc.vpc_enable_dns_support}"
  description = "Whether or not the VPC has DNS support."
}

output "vpc_enable_dns_hostnames" {
  value       = "${module.vpc.vpc_enable_dns_hostnames}"
  description = "Whether or not the VPC has DNS hostname support."
}

output "vpc_main_route_table_id" {
  value       = "${module.vpc.vpc_main_route_table_id}"
  description = "The ID of the main route table associated with this VPC."
}

output "vpc_default_network_acl_id" {
  value       = "${module.vpc.vpc_default_network_acl_id}"
  description = "The ID of the network ACL created by default on VPC creation."
}

output "vpc_default_security_group_id" {
  value       = "${module.vpc.vpc_default_security_group_id}"
  description = "The ID of the security group created by default on VPC creation."
}

output "vpc_default_route_table_id" {
  value       = "${module.vpc.vpc_default_route_table_id}"
  description = "The ID of the route table created by default on VPC creation."
}

output "internet_gateway_id" {
  value       = "${module.vpc.internet_gateway_id}"
  description = "The ID of the Internet Gateway."
}

output "public_subnet_ids" {
  value       = "${module.vpc.public_subnet_ids}"
  description = "The IDs of the public subnets."
}

output "public_subnet_arns" {
  value       = "${module.vpc.public_subnet_arns}"
  description = "The ARNs of the public subnets."
}

output "public_subnet_cidr_blocks" {
  value       = "${module.vpc.public_subnet_cidr_blocks}"
  description = "The CIDR blocks for the public subnets."
}

output "public_subnet_availability_zones" {
  value       = "${module.vpc.public_subnet_availability_zones}"
  description = "The Availability Zones for the public subnets."
}

output "public_route_table_id" {
  value       = "${module.vpc.public_route_table_id}"
  description = "The ID of the public routing table."
}

output "public_route_table_association_ids" {
  value       = "${module.vpc.public_route_table_association_ids}"
  description = "The IDs of the public associations."
}

output "public_network_acl_id" {
  value       = "${module.vpc.public_network_acl_id}"
  description = "The ID of the public network ACL."
}

output "public_ingress_network_acl_rule_id" {
  value       = "${module.vpc.public_ingress_network_acl_rule_id}"
  description = "The ID of the public ingress network ACL Rule."
}

output "public_egress_network_acl_rule_id" {
  value       = "${module.vpc.public_egress_network_acl_rule_id}"
  description = "The ID of the public egress network ACL Rule."
}

output "private_subnet_ids" {
  value       = "${module.vpc.private_subnet_ids}"
  description = "The IDs of the private subnets."
}

output "private_subnet_arns" {
  value       = "${module.vpc.private_subnet_arns}"
  description = "The ARNs of the private subnets."
}

output "private_subnet_cidr_blocks" {
  value       = "${module.vpc.private_subnet_cidr_blocks}"
  description = "The CIDR blocks for the private subnets."
}

output "private_subnet_availability_zones" {
  value       = "${module.vpc.private_subnet_availability_zones}"
  description = "The Availability Zones for the private subnets."
}

output "private_route_table_id" {
  value       = "${module.vpc.private_route_table_id}"
  description = "The ID of the private routing table."
}

output "private_route_table_association_ids" {
  value       = "${module.vpc.private_route_table_association_ids}"
  description = "The IDs of the private associations."
}

output "private_network_acl_id" {
  value       = "${module.vpc.private_network_acl_id}"
  description = "The ID of the private network ACL."
}

output "private_ingress_network_acl_rule_id" {
  value       = "${module.vpc.private_ingress_network_acl_rule_id}"
  description = "The ID of the private ingress network ACL Rule."
}

output "private_egress_network_acl_rule_id" {
  value       = "${module.vpc.private_egress_network_acl_rule_id}"
  description = "The ID of the private egress network ACL Rule."
}
