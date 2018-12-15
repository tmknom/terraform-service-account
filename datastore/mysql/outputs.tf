output "db_instance_address" {
  value       = "${module.mysql.db_instance_address}"
  description = "The hostname of the RDS instance. See also endpoint and port."
}

output "db_instance_arn" {
  value       = "${module.mysql.db_instance_arn}"
  description = "The ARN of the RDS instance."
}

output "db_instance_allocated_storage" {
  value       = "${module.mysql.db_instance_allocated_storage}"
  description = "The amount of allocated storage."
}

output "db_instance_availability_zone" {
  value       = "${module.mysql.db_instance_availability_zone}"
  description = "The availability zone of the instance."
}

output "db_instance_backup_retention_period" {
  value       = "${module.mysql.db_instance_backup_retention_period}"
  description = "The backup retention period."
}

output "db_instance_backup_window" {
  value       = "${module.mysql.db_instance_backup_window}"
  description = "The backup window."
}

output "db_instance_ca_cert_identifier" {
  value       = "${module.mysql.db_instance_ca_cert_identifier}"
  description = "Specifies the identifier of the CA certificate for the DB instance."
}

output "db_instance_endpoint" {
  value       = "${module.mysql.db_instance_endpoint}"
  description = ".The connection endpoint in address:port format."
}

output "db_instance_engine" {
  value       = "${module.mysql.db_instance_engine}"
  description = "The database engine."
}

output "db_instance_engine_version" {
  value       = "${module.mysql.db_instance_engine_version}"
  description = "The database engine version."
}

output "db_instance_hosted_zone_id" {
  value       = "${module.mysql.db_instance_hosted_zone_id}"
  description = "The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)."
}

output "db_instance_id" {
  value       = "${module.mysql.db_instance_id}"
  description = "The RDS instance ID."
}

output "db_instance_class" {
  value       = "${module.mysql.db_instance_class}"
  description = "The RDS instance class."
}

output "db_instance_maintenance_window" {
  value       = "${module.mysql.db_instance_maintenance_window}"
  description = "The instance maintenance window."
}

output "db_instance_multi_az" {
  value       = "${module.mysql.db_instance_multi_az}"
  description = "If the RDS instance is multi AZ enabled."
}

output "db_instance_name" {
  value       = "${module.mysql.db_instance_name}"
  description = "The database name."
}

output "db_instance_port" {
  value       = "${module.mysql.db_instance_port}"
  description = "The database port."
}

output "db_instance_resource_id" {
  value       = "${module.mysql.db_instance_resource_id}"
  description = "The RDS Resource ID of this instance."
}

output "db_instance_status" {
  value       = "${module.mysql.db_instance_status}"
  description = "The RDS instance status."
}

output "db_instance_storage_encrypted" {
  value       = "${module.mysql.db_instance_storage_encrypted}"
  description = "Specifies whether the DB instance is encrypted."
}

output "db_instance_username" {
  value       = "${module.mysql.db_instance_username}"
  description = "The master username for the database."
}

output "db_option_group_id" {
  value       = "${module.mysql.db_option_group_id}"
  description = "The db option group name."
}

output "db_option_group_arn" {
  value       = "${module.mysql.db_option_group_arn}"
  description = "The ARN of the db option group."
}

output "db_parameter_group_id" {
  value       = "${module.mysql.db_parameter_group_id}"
  description = "The db parameter group name."
}

output "db_parameter_group_arn" {
  value       = "${module.mysql.db_parameter_group_arn}"
  description = "The ARN of the db parameter group."
}

output "db_subnet_group_id" {
  value       = "${module.mysql.db_subnet_group_id}"
  description = "The db subnet group name."
}

output "db_subnet_group_arn" {
  value       = "${module.mysql.db_subnet_group_arn}"
  description = "The ARN of the db subnet group."
}

output "db_security_group_id" {
  value       = "${module.mysql.security_group_id}"
  description = "The ID of the RDS MySQL security group."
}

output "db_security_group_arn" {
  value       = "${module.mysql.security_group_arn}"
  description = "The ARN of the RDS MySQL security group."
}

output "db_security_group_vpc_id" {
  value       = "${module.mysql.security_group_vpc_id}"
  description = "The VPC ID of the RDS MySQL security group."
}

output "db_security_group_owner_id" {
  value       = "${module.mysql.security_group_owner_id}"
  description = "The owner ID of the RDS MySQL security group."
}

output "db_security_group_name" {
  value       = "${module.mysql.security_group_name}"
  description = "The name of the RDS MySQL security group."
}

output "db_security_group_description" {
  value       = "${module.mysql.security_group_description}"
  description = "The description of the RDS MySQL security group."
}

output "db_security_group_ingress" {
  value       = "${module.mysql.security_group_ingress}"
  description = "The ingress rules of the RDS MySQL security group."
}

output "db_security_group_egress" {
  value       = "${module.mysql.security_group_egress}"
  description = "The egress rules of the RDS MySQL security group."
}
