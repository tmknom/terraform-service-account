output "alb_alias_route53_record_fqdns" {
  value       = "${aws_route53_record.alb_alias.fqdn}"
  description = "FQDN built using the alb alias zone domain and name."
}

output "alb_alias_route53_record_names" {
  value       = "${aws_route53_record.alb_alias.name}"
  description = "The name of the alb alias record."
}

output "alb_id" {
  value       = "${module.alb.alb_id}"
  description = "The ARN of the load balancer (matches arn)."
}

output "alb_arn" {
  value       = "${module.alb.alb_arn}"
  description = "The ARN of the load balancer (matches id)."
}

output "alb_arn_suffix" {
  value       = "${module.alb.alb_arn_suffix}"
  description = "The ARN suffix for use with CloudWatch Metrics."
}

output "alb_dns_name" {
  value       = "${module.alb.alb_dns_name}"
  description = "The DNS name of the load balancer."
}

output "alb_zone_id" {
  value       = "${module.alb.alb_zone_id}"
  description = "The canonical hosted zone ID of the load balancer (to be used in a Route 53 Alias record)."
}

output "https_alb_listener_id" {
  value       = "${module.alb.https_alb_listener_id}"
  description = "The ARN of the HTTPS listener (matches arn)"
}

output "https_alb_listener_arn" {
  value       = "${module.alb.https_alb_listener_arn}"
  description = "The ARN of the HTTPS listener (matches id)"
}

output "http_alb_listener_id" {
  value       = "${module.alb.http_alb_listener_id}"
  description = "The ARN of the HTTP listener (matches arn)"
}

output "http_alb_listener_arn" {
  value       = "${module.alb.http_alb_listener_arn}"
  description = "The ARN of the HTTP listener (matches id)"
}

output "redirect_http_to_https_alb_listener_id" {
  value       = "${module.alb.redirect_http_to_https_alb_listener_id}"
  description = "The ARN of the HTTP listener of HTTPS redirect (matches arn)"
}

output "redirect_http_to_https_alb_listener_arn" {
  value       = "${module.alb.redirect_http_to_https_alb_listener_arn}"
  description = "The ARN of the HTTP listener of HTTPS redirect (matches id)"
}

output "alb_target_group_id" {
  value       = "${module.alb.alb_target_group_id}"
  description = "The ARN of the Target Group (matches arn)"
}

output "alb_target_group_arn" {
  value       = "${module.alb.alb_target_group_arn}"
  description = "The ARN of the Target Group (matches id)"
}

output "alb_target_group_arn_suffix" {
  value       = "${module.alb.alb_target_group_arn_suffix}"
  description = "The ARN suffix for use with CloudWatch Metrics."
}

output "alb_target_group_name" {
  value       = "${module.alb.alb_target_group_name}"
  description = "The name of the Target Group."
}

output "alb_security_group_id" {
  value       = "${module.alb.security_group_id}"
  description = "The ID of the alb security group."
}

output "alb_security_group_arn" {
  value       = "${module.alb.security_group_arn}"
  description = "The ARN of the alb security group."
}

output "alb_security_group_vpc_id" {
  value       = "${module.alb.security_group_vpc_id}"
  description = "The VPC ID of the alb security group."
}

output "alb_security_group_owner_id" {
  value       = "${module.alb.security_group_owner_id}"
  description = "The owner ID of the alb security group."
}

output "alb_security_group_name" {
  value       = "${module.alb.security_group_name}"
  description = "The name of the alb security group."
}

output "alb_security_group_description" {
  value       = "${module.alb.security_group_description}"
  description = "The description of the alb security group."
}

output "alb_security_group_ingress" {
  value       = "${module.alb.security_group_ingress}"
  description = "The ingress rules of the alb security group."
}

output "alb_security_group_egress" {
  value       = "${module.alb.security_group_egress}"
  description = "The egress rules of the alb security group."
}

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
