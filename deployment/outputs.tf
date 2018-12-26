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

output "codebuild_project_id" {
  value       = "${module.codebuild.codebuild_project_id}"
  description = "The name (if imported via name) or ARN (if created via Terraform or imported via ARN) of the CodeBuild project."
}

output "codebuild_project_arn" {
  value       = "${module.codebuild.codebuild_project_id}"
  description = "The ARN of the CodeBuild project."
}

output "codebuild_iam_role_arn" {
  value       = "${module.codebuild.codebuild_project_id}"
  description = "The Amazon Resource Name (ARN) specifying the IAM Role for CodeBuild."
}

output "codebuild_iam_role_create_date" {
  value       = "${module.codebuild.codebuild_project_id}"
  description = "The creation date of the IAM Role for CodeBuild."
}

output "codebuild_iam_role_unique_id" {
  value       = "${module.codebuild.codebuild_project_id}"
  description = "The stable and unique string identifying the IAM Role for CodeBuild."
}

output "codebuild_iam_role_name" {
  value       = "${module.codebuild.codebuild_project_id}"
  description = "The name of the IAM Role for CodeBuild."
}

output "codebuild_iam_role_description" {
  value       = "${module.codebuild.codebuild_project_id}"
  description = "The description of the IAM Role for CodeBuild."
}

output "codebuild_iam_policy_id" {
  value       = "${module.codebuild.codebuild_project_id}"
  description = "The IAM Policy's ID for CodeBuild."
}

output "codebuild_iam_policy_arn" {
  value       = "${module.codebuild.codebuild_project_id}"
  description = "The ARN assigned by AWS to this IAM Policy for CodeBuild."
}

output "codebuild_iam_policy_description" {
  value       = "${module.codebuild.codebuild_project_id}"
  description = "The description of the IAM Policy for CodeBuild."
}

output "codebuild_iam_policy_name" {
  value       = "${module.codebuild.codebuild_project_id}"
  description = "The name of the IAM Policy for CodeBuild."
}

output "codebuild_iam_policy_path" {
  value       = "${module.codebuild.codebuild_project_id}"
  description = "The path of the IAM Policy for CodeBuild."
}

output "codebuild_iam_policy_document" {
  value       = "${module.codebuild.codebuild_project_id}"
  description = "The policy document of the IAM Policy for CodeBuild."
}
