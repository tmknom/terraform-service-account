# Redis Datastore stack

Live redis datastore resources definition.

## Resources

- ElastiCache_Replication_Group
- Parameter Group

## Design

- Enable Multi-AZ
- Enable automatic failover
- Enable at-rest encryption
- Enable in-transit encryption
- Enable automated backups

## Inputs

| Name                          | Description                               |  Type  | Default | Required |
| ----------------------------- | ----------------------------------------- | :----: | :-----: | :------: |
| terraform_backend_bucket_name | The Bucket Name of the terraform backend. | string |    -    |   yes    |

## Outputs

| Name                                                   | Description                                                                |
| ------------------------------------------------------ | -------------------------------------------------------------------------- |
| elasticache_parameter_group_id                         | The ElastiCache parameter group name.                                      |
| elasticache_replication_group_id                       | The ID of the ElastiCache Replication Group.                               |
| elasticache_replication_group_member_clusters          | The identifiers of all the nodes that are part of this replication group.  |
| elasticache_replication_group_primary_endpoint_address | The address of the endpoint for the primary node in the replication group. |
| elasticache_security_group_arn                         | The ARN of the Redis ElastiCache security group.                           |
| elasticache_security_group_description                 | The description of the Redis ElastiCache security group.                   |
| elasticache_security_group_egress                      | The egress rules of the Redis ElastiCache security group.                  |
| elasticache_security_group_id                          | The ID of the Redis ElastiCache security group.                            |
| elasticache_security_group_ingress                     | The ingress rules of the Redis ElastiCache security group.                 |
| elasticache_security_group_name                        | The name of the Redis ElastiCache security group.                          |
| elasticache_security_group_owner_id                    | The owner ID of the Redis ElastiCache security group.                      |
| elasticache_security_group_vpc_id                      | The VPC ID of the Redis ElastiCache security group.                        |

## References

- [terraform-aws-elasticache-redis](https://github.com/tmknom/terraform-aws-elasticache-redis) - Terraform module which creates Redis ElastiCache resources on AWS.
