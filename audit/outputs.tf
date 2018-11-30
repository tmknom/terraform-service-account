output "s3_access_log_bucket_id" {
  value       = "${module.s3_access_log.s3_bucket_id}"
  description = "The name of the s3 access log bucket."
}

output "s3_access_log_bucket_arn" {
  value       = "${module.s3_access_log.s3_bucket_arn}"
  description = "The ARN of the s3 access log bucket. Will be of format arn:aws:s3:::bucketname."
}

output "s3_access_log_bucket_domain_name" {
  value       = "${module.s3_access_log.s3_bucket_domain_name}"
  description = "The s3 access log bucket domain name. Will be of format bucketname.s3.amazonaws.com."
}

output "s3_access_log_bucket_hosted_zone_id" {
  value       = "${module.s3_access_log.s3_bucket_hosted_zone_id}"
  description = "The Route 53 Hosted Zone ID for this s3 access log bucket's region."
}

output "s3_access_log_bucket_region" {
  value       = "${module.s3_access_log.s3_bucket_region}"
  description = "The AWS region this s3 access log bucket resides in."
}
