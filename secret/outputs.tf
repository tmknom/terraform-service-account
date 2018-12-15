output "default_kms_key_arn" {
  value       = "${module.default_key.kms_key_arn}"
  description = "The Amazon Resource Name (ARN) of the default key."
}

output "default_kms_key_id" {
  value       = "${module.default_key.kms_key_arn}"
  description = "The globally unique identifier for the default key."
}

output "default_kms_alias_arn" {
  value       = "${module.default_key.kms_key_arn}"
  description = "The Amazon Resource Name (ARN) of the default key alias."
}

output "default_kms_alias_target_key_arn" {
  value       = "${module.default_key.kms_key_arn}"
  description = "The Amazon Resource Name (ARN) of the default target key identifier."
}

output "root_domain_name_ssm_parameter_arn" {
  value       = "${module.root_domain_name.ssm_parameter_arn}"
  description = "The ARN of the root domain name parameter."
}

output "root_domain_name_ssm_parameter_name" {
  value       = "${module.root_domain_name.ssm_parameter_name}"
  description = "The name of the root domain name parameter."
}

output "root_domain_name_ssm_parameter_description" {
  value       = "${module.root_domain_name.ssm_parameter_description}"
  description = "The description of the root domain name parameter."
}

output "root_domain_name_ssm_parameter_type" {
  value       = "${module.root_domain_name.ssm_parameter_type}"
  description = "The type of the root domain name parameter."
}

output "root_domain_name_ssm_parameter_value" {
  value       = "${module.root_domain_name.ssm_parameter_value}"
  description = "The value of the root domain name parameter."
}

output "uninitialized_domain_name_ssm_parameter_arn" {
  value       = "${module.uninitialized_domain_name.ssm_parameter_arn}"
  description = "The ARN of the uninitialized domain name parameter."
}

output "uninitialized_domain_name_ssm_parameter_name" {
  value       = "${module.uninitialized_domain_name.ssm_parameter_name}"
  description = "The name of the uninitialized domain name parameter."
}

output "uninitialized_domain_name_ssm_parameter_description" {
  value       = "${module.uninitialized_domain_name.ssm_parameter_description}"
  description = "The description of the uninitialized domain name parameter."
}

output "uninitialized_domain_name_ssm_parameter_type" {
  value       = "${module.uninitialized_domain_name.ssm_parameter_type}"
  description = "The type of the uninitialized domain name parameter."
}

output "uninitialized_domain_name_ssm_parameter_value" {
  value       = "${module.uninitialized_domain_name.ssm_parameter_value}"
  description = "The value of the uninitialized domain name parameter."
}
