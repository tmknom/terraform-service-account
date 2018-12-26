output "nginx_ecr_repository_arn" {
  value       = "${module.nginx_ecr.ecr_repository_arn}"
  description = "Full ARN of the nginx repository."
}

output "nginx_ecr_repository_name" {
  value       = "${module.nginx_ecr.ecr_repository_name}"
  description = "The name of the nginx repository."
}

output "nginx_ecr_repository_registry_id" {
  value       = "${module.nginx_ecr.ecr_repository_registry_id}"
  description = "The registry ID where the nginx repository was created."
}

output "nginx_ecr_repository_url" {
  value       = "${module.nginx_ecr.ecr_repository_url}"
  description = "The URL of the nginx repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName)"
}
