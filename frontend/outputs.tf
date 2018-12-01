output "lb_log_s3_bucket_id" {
  value       = "${module.s3_lb_log.s3_bucket_id}"
  description = "The name of the s3 lb log bucket."
}

output "lb_log_s3_bucket_arn" {
  value       = "${module.s3_lb_log.s3_bucket_arn}"
  description = "The ARN of s3 lb log the bucket. Will be of format arn:aws:s3:::bucketname."
}

output "lb_log_s3_bucket_domain_name" {
  value       = "${module.s3_lb_log.s3_bucket_domain_name}"
  description = "The s3 lb log bucket domain name. Will be of format bucketname.s3.amazonaws.com."
}

output "lb_log_s3_bucket_hosted_zone_id" {
  value       = "${module.s3_lb_log.s3_bucket_hosted_zone_id}"
  description = "The Route 53 Hosted Zone ID for this s3 lb log bucket's region."
}

output "lb_log_s3_bucket_region" {
  value       = "${module.s3_lb_log.s3_bucket_region}"
  description = "The AWS region this s3 lb log bucket resides in."
}
