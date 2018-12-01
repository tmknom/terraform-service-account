# Frontend stack

Live frontend resources definition.

## Resources

- ALB
- ALB Listener
- Target Group
- Security Group for ALB
- S3 Bucket for ALB Logging

## Design

- Enable HTTPS
- Enable HTTP/2
- Enable Access Logging
- Enable Deletion Protection
- Enable HTTP to HTTPS redirect
- Use AWS recommended SSL Policy

## Inputs

| Name                          | Description                               |  Type  | Default | Required |
| ----------------------------- | ----------------------------------------- | :----: | :-----: | :------: |
| terraform_backend_bucket_name | The Bucket Name of the terraform backend. | string |    -    |   yes    |

## Outputs

| Name                                    | Description                                                                                |
| --------------------------------------- | ------------------------------------------------------------------------------------------ |
| alb_arn                                 | The ARN of the load balancer (matches id).                                                 |
| alb_arn_suffix                          | The ARN suffix for use with CloudWatch Metrics.                                            |
| alb_dns_name                            | The DNS name of the load balancer.                                                         |
| alb_id                                  | The ARN of the load balancer (matches arn).                                                |
| alb_security_group_arn                  | The ARN of the alb security group.                                                         |
| alb_security_group_description          | The description of the alb security group.                                                 |
| alb_security_group_egress               | The egress rules of the alb security group.                                                |
| alb_security_group_id                   | The ID of the alb security group.                                                          |
| alb_security_group_ingress              | The ingress rules of the alb security group.                                               |
| alb_security_group_name                 | The name of the alb security group.                                                        |
| alb_security_group_owner_id             | The owner ID of the alb security group.                                                    |
| alb_security_group_vpc_id               | The VPC ID of the alb security group.                                                      |
| alb_target_group_arn                    | The ARN of the Target Group (matches id)                                                   |
| alb_target_group_arn_suffix             | The ARN suffix for use with CloudWatch Metrics.                                            |
| alb_target_group_id                     | The ARN of the Target Group (matches arn)                                                  |
| alb_target_group_name                   | The name of the Target Group.                                                              |
| alb_zone_id                             | The canonical hosted zone ID of the load balancer (to be used in a Route 53 Alias record). |
| http_alb_listener_arn                   | The ARN of the HTTP listener (matches id)                                                  |
| http_alb_listener_id                    | The ARN of the HTTP listener (matches arn)                                                 |
| https_alb_listener_arn                  | The ARN of the HTTPS listener (matches id)                                                 |
| https_alb_listener_id                   | The ARN of the HTTPS listener (matches arn)                                                |
| lb_log_s3_bucket_arn                    | The ARN of s3 lb log the bucket. Will be of format arn:aws:s3:::bucketname.                |
| lb_log_s3_bucket_domain_name            | The s3 lb log bucket domain name. Will be of format bucketname.s3.amazonaws.com.           |
| lb_log_s3_bucket_hosted_zone_id         | The Route 53 Hosted Zone ID for this s3 lb log bucket's region.                            |
| lb_log_s3_bucket_id                     | The name of the s3 lb log bucket.                                                          |
| lb_log_s3_bucket_region                 | The AWS region this s3 lb log bucket resides in.                                           |
| redirect_http_to_https_alb_listener_arn | The ARN of the HTTP listener of HTTPS redirect (matches id)                                |
| redirect_http_to_https_alb_listener_id  | The ARN of the HTTP listener of HTTPS redirect (matches arn)                               |

## References

- [terraform-aws-alb](https://github.com/tmknom/terraform-aws-alb) - Terraform module which creates ALB resources on AWS.
- [terraform-aws-s3-lb-log](https://github.com/tmknom/terraform-aws-s3-lb-log) - Terraform module which creates S3 Bucket resources for Load Balancer Access Logs on AWS.
