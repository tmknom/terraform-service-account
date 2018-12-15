# MySQL Datastore stack

Live mysql datastore resources definition.

## Usage

Step 1 - Provision resources

```shell
make plan-datastore-mysql
make apply-datastore-mysql
```

Step 2 - Change master user password

```shell
aws rds modify-db-instance --db-instance-identifier primary --master-user-password <YouShouldSpecifyVeryStrongPassword!>
```

The master user password constraints:

- Can include any printable ASCII character except "/", """, or "@".
- Must contain from 8 to 41 characters.

## Resources

- RDS DB Instance
- Option Group
- Parameter Group

## Design

- Enable deletion protection
- Enable Multi-AZ
- Enable encryption
- Enable IAM database authentication
- Enable automated backups
- Sufficient backup retention period
- Disable publicly accessible

## Inputs

| Name                          | Description                               |  Type  | Default | Required |
| ----------------------------- | ----------------------------------------- | :----: | :-----: | :------: |
| terraform_backend_bucket_name | The Bucket Name of the terraform backend. | string |    -    |   yes    |

## Outputs

| Name                                | Description                                                                              |
| ----------------------------------- | ---------------------------------------------------------------------------------------- |
| db_instance_address                 | The hostname of the RDS instance. See also endpoint and port.                            |
| db_instance_allocated_storage       | The amount of allocated storage.                                                         |
| db_instance_arn                     | The ARN of the RDS instance.                                                             |
| db_instance_availability_zone       | The availability zone of the instance.                                                   |
| db_instance_backup_retention_period | The backup retention period.                                                             |
| db_instance_backup_window           | The backup window.                                                                       |
| db_instance_ca_cert_identifier      | Specifies the identifier of the CA certificate for the DB instance.                      |
| db_instance_class                   | The RDS instance class.                                                                  |
| db_instance_endpoint                | .The connection endpoint in address:port format.                                         |
| db_instance_engine                  | The database engine.                                                                     |
| db_instance_engine_version          | The database engine version.                                                             |
| db_instance_hosted_zone_id          | The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record). |
| db_instance_id                      | The RDS instance ID.                                                                     |
| db_instance_maintenance_window      | The instance maintenance window.                                                         |
| db_instance_multi_az                | If the RDS instance is multi AZ enabled.                                                 |
| db_instance_name                    | The database name.                                                                       |
| db_instance_port                    | The database port.                                                                       |
| db_instance_resource_id             | The RDS Resource ID of this instance.                                                    |
| db_instance_status                  | The RDS instance status.                                                                 |
| db_instance_storage_encrypted       | Specifies whether the DB instance is encrypted.                                          |
| db_instance_username                | The master username for the database.                                                    |
| db_option_group_arn                 | The ARN of the db option group.                                                          |
| db_option_group_id                  | The db option group name.                                                                |
| db_parameter_group_arn              | The ARN of the db parameter group.                                                       |
| db_parameter_group_id               | The db parameter group name.                                                             |
| db_security_group_arn               | The ARN of the RDS MySQL security group.                                                 |
| db_security_group_description       | The description of the RDS MySQL security group.                                         |
| db_security_group_egress            | The egress rules of the RDS MySQL security group.                                        |
| db_security_group_id                | The ID of the RDS MySQL security group.                                                  |
| db_security_group_ingress           | The ingress rules of the RDS MySQL security group.                                       |
| db_security_group_name              | The name of the RDS MySQL security group.                                                |
| db_security_group_owner_id          | The owner ID of the RDS MySQL security group.                                            |
| db_security_group_vpc_id            | The VPC ID of the RDS MySQL security group.                                              |
| db_subnet_group_arn                 | The ARN of the db subnet group.                                                          |
| db_subnet_group_id                  | The db subnet group name.                                                                |

## References

- [https://github.com/tmknom/terraform-aws-rds-mysql](https://github.com/tmknom/terraform-aws-rds-mysql) - Terraform module which creates MySQL RDS resources on AWS.
