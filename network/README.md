# Network stack

Live network resources definition.

## Resources

- VPC
- Subnet
- Route Table
- Network ACL
- Internet Gateway
- ACM Certificate
- Route53 Record for ACM Certificate

## Design

- Create a Subnet for each tier
- Create a Route Table for each tier
- Unused Default Network ACL
- Validate certificates automatically
- Renew certificates automatically

## Outputs

| Name                                                      | Description                                                                               |
| --------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| alb_certificate_acm_certificate_arn                       | The ARN of the alb certificate.                                                           |
| alb_certificate_acm_certificate_domain_validation_options | A list of attributes to feed into other resources to complete alb certificate validation. |
| alb_certificate_acm_certificate_id                        | The ARN of the alb certificate.                                                           |
| alb_certificate_route53_record_fqdns                      | FQDN built using the zone domain and name for alb certificate.                            |
| alb_certificate_route53_record_names                      | The name of the record for alb certificate.                                               |
| internet_gateway_id                                       | The ID of the Internet Gateway.                                                           |
| private_egress_network_acl_rule_id                        | The ID of the private egress network ACL Rule.                                            |
| private_ingress_network_acl_rule_id                       | The ID of the private ingress network ACL Rule.                                           |
| private_network_acl_id                                    | The ID of the private network ACL.                                                        |
| private_route_table_association_ids                       | The IDs of the private associations.                                                      |
| private_route_table_id                                    | The ID of the private routing table.                                                      |
| private_subnet_arns                                       | The ARNs of the private subnets.                                                          |
| private_subnet_availability_zones                         | The Availability Zones for the private subnets.                                           |
| private_subnet_cidr_blocks                                | The CIDR blocks for the private subnets.                                                  |
| private_subnet_ids                                        | The IDs of the private subnets.                                                           |
| public_egress_network_acl_rule_id                         | The ID of the public egress network ACL Rule.                                             |
| public_ingress_network_acl_rule_id                        | The ID of the public ingress network ACL Rule.                                            |
| public_network_acl_id                                     | The ID of the public network ACL.                                                         |
| public_route_table_association_ids                        | The IDs of the public associations.                                                       |
| public_route_table_id                                     | The ID of the public routing table.                                                       |
| public_subnet_arns                                        | The ARNs of the public subnets.                                                           |
| public_subnet_availability_zones                          | The Availability Zones for the public subnets.                                            |
| public_subnet_cidr_blocks                                 | The CIDR blocks for the public subnets.                                                   |
| public_subnet_ids                                         | The IDs of the public subnets.                                                            |
| vpc_arn                                                   | Amazon Resource Name (ARN) of VPC.                                                        |
| vpc_cidr_block                                            | The CIDR block of the VPC.                                                                |
| vpc_default_network_acl_id                                | The ID of the network ACL created by default on VPC creation.                             |
| vpc_default_route_table_id                                | The ID of the route table created by default on VPC creation.                             |
| vpc_default_security_group_id                             | The ID of the security group created by default on VPC creation.                          |
| vpc_enable_dns_hostnames                                  | Whether or not the VPC has DNS hostname support.                                          |
| vpc_enable_dns_support                                    | Whether or not the VPC has DNS support.                                                   |
| vpc_id                                                    | The ID of the VPC.                                                                        |
| vpc_instance_tenancy                                      | Tenancy of instances spin up within VPC.                                                  |
| vpc_main_route_table_id                                   | The ID of the main route table associated with this VPC.                                  |

## References

- [terraform-aws-vpc](https://github.com/tmknom/terraform-aws-vpc) - Terraform module which creates VPC resources on AWS.
- [terraform-aws-acm-certificate](https://github.com/tmknom/terraform-aws-acm-certificate)
