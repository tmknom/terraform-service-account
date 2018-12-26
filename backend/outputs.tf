output "ecs_cluster_id" {
  value       = "${aws_ecs_cluster.default.id}"
  description = "The Amazon Resource Name (ARN) that identifies the cluster."
}

output "ecs_cluster_arn" {
  value       = "${aws_ecs_cluster.default.arn}"
  description = "The Amazon Resource Name (ARN) that identifies the cluster."
}

output "ecs_service_id" {
  value       = "${module.ecs_fargate.ecs_service_id}"
  description = "The Amazon Resource Name (ARN) that identifies the service."
}

output "ecs_service_name" {
  value       = "${module.ecs_fargate.ecs_service_name}"
  description = "The name of the service."
}

output "ecs_service_cluster" {
  value       = "${module.ecs_fargate.ecs_service_cluster}"
  description = "The Amazon Resource Name (ARN) of cluster which the service runs on."
}

output "ecs_service_iam_role" {
  value       = "${module.ecs_fargate.ecs_service_iam_role}"
  description = "The ARN of IAM role used for ELB."
}

output "ecs_service_desired_count" {
  value       = "${module.ecs_fargate.ecs_service_desired_count}"
  description = "The number of instances of the task definition."
}

output "ecs_service_security_group_id" {
  value       = "${module.ecs_fargate.security_group_id}"
  description = "The ID of the ECS Service security group."
}

output "ecs_service_security_group_arn" {
  value       = "${module.ecs_fargate.security_group_arn}"
  description = "The ARN of the ECS Service security group."
}

output "ecs_service_security_group_vpc_id" {
  value       = "${module.ecs_fargate.security_group_vpc_id}"
  description = "The VPC ID of the ECS Service security group."
}

output "ecs_service_security_group_owner_id" {
  value       = "${module.ecs_fargate.security_group_owner_id}"
  description = "The owner ID of the ECS Service security group."
}

output "ecs_service_security_group_name" {
  value       = "${module.ecs_fargate.security_group_name}"
  description = "The name of the ECS Service security group."
}

output "ecs_service_security_group_description" {
  value       = "${module.ecs_fargate.security_group_description}"
  description = "The description of the ECS Service security group."
}

output "ecs_service_security_group_ingress" {
  value       = "${module.ecs_fargate.security_group_ingress}"
  description = "The ingress rules of the ECS Service security group."
}

output "ecs_service_security_group_egress" {
  value       = "${module.ecs_fargate.security_group_egress}"
  description = "The egress rules of the ECS Service security group."
}

output "ecs_task_definition_arn" {
  value       = "${module.ecs_fargate.ecs_task_definition_arn}"
  description = "Full ARN of the Task Definition (including both family and revision)."
}

output "ecs_task_definition_family" {
  value       = "${module.ecs_fargate.ecs_task_definition_family}"
  description = "The family of the Task Definition."
}

output "ecs_task_definition_revision" {
  value       = "${module.ecs_fargate.ecs_task_definition_revision}"
  description = "The revision of the task in a particular family."
}

output "iam_role_arn" {
  value       = "${module.ecs_fargate.iam_role_arn}"
  description = "The Amazon Resource Name (ARN) specifying the IAM Role."
}

output "iam_role_create_date" {
  value       = "${module.ecs_fargate.iam_role_create_date}"
  description = "The creation date of the IAM Role."
}

output "iam_role_unique_id" {
  value       = "${module.ecs_fargate.iam_role_unique_id}"
  description = "The stable and unique string identifying the IAM Role."
}

output "iam_role_name" {
  value       = "${module.ecs_fargate.iam_role_name}"
  description = "The name of the IAM Role."
}

output "iam_role_description" {
  value       = "${module.ecs_fargate.iam_role_description}"
  description = "The description of the IAM Role."
}

output "iam_policy_id" {
  value       = "${module.ecs_fargate.iam_policy_id}"
  description = "The IAM Policy's ID."
}

output "iam_policy_arn" {
  value       = "${module.ecs_fargate.iam_policy_arn}"
  description = "The ARN assigned by AWS to this IAM Policy."
}

output "iam_policy_description" {
  value       = "${module.ecs_fargate.iam_policy_description}"
  description = "The description of the IAM Policy."
}

output "iam_policy_name" {
  value       = "${module.ecs_fargate.iam_policy_name}"
  description = "The name of the IAM Policy."
}

output "iam_policy_path" {
  value       = "${module.ecs_fargate.iam_policy_path}"
  description = "The path of the IAM Policy."
}

output "iam_policy_document" {
  value       = "${module.ecs_fargate.iam_policy_document}"
  description = "The policy document of the IAM Policy."
}
