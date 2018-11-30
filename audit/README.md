# Audit stack

Live audit resources definition.

## Resources

- S3 Bucket

## Design

- Enable S3 Access Logging

## Outputs

| Name                                | Description                                                                          |
| ----------------------------------- | ------------------------------------------------------------------------------------ |
| s3_access_log_bucket_arn            | The ARN of the s3 access log bucket. Will be of format arn:aws:s3:::bucketname.      |
| s3_access_log_bucket_domain_name    | The s3 access log bucket domain name. Will be of format bucketname.s3.amazonaws.com. |
| s3_access_log_bucket_hosted_zone_id | The Route 53 Hosted Zone ID for this s3 access log bucket's region.                  |
| s3_access_log_bucket_id             | The name of the s3 access log bucket.                                                |
| s3_access_log_bucket_region         | The AWS region this s3 access log bucket resides in.                                 |

## References

- [terraform-aws-s3-access-log](https://github.com/tmknom/terraform-aws-s3-access-log) - Terraform module which creates S3 Bucket resources for Access Log on AWS.
