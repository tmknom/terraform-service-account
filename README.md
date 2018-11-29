# terraform-service-account

[![CircleCI](https://circleci.com/gh/tmknom/terraform-service-account.svg?style=svg)](https://circleci.com/gh/tmknom/terraform-service-account)
[![License](https://img.shields.io/github/license/tmknom/terraform-service-account.svg)](https://opensource.org/licenses/Apache-2.0)

## Development

### Requirements

- [Docker](https://www.docker.com/)

### Configure environment variables

```shell
export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=ap-northeast-1
```

### Installation

```shell
git clone git@github.com:tmknom/terraform-service-account.git
cd terraform-service-account
make install
```

### Makefile targets

```text
check-format                   Check format code
cibuild                        Execute CI build
format                         Format code
help                           Show help
install                        Install requirements
lint                           Lint code
terraform-apply-audit          Run terraform apply audit
terraform-apply-backend        Run terraform apply backend
terraform-apply-datastore      Run terraform apply datastore
terraform-apply-deployment     Run terraform apply deployment
terraform-apply-frontend       Run terraform apply frontend
terraform-apply-iam            Run terraform apply iam
terraform-apply-monitoring     Run terraform apply monitoring
terraform-apply-network        Run terraform apply network
terraform-apply-secret         Run terraform apply secret
terraform-destroy-audit        Run terraform destroy audit
terraform-destroy-backend      Run terraform destroy backend
terraform-destroy-datastore    Run terraform destroy datastore
terraform-destroy-deployment   Run terraform destroy deployment
terraform-destroy-frontend     Run terraform destroy frontend
terraform-destroy-iam          Run terraform destroy iam
terraform-destroy-monitoring   Run terraform destroy monitoring
terraform-destroy-network      Run terraform destroy network
terraform-destroy-secret       Run terraform destroy secret
terraform-plan-audit           Run terraform plan audit
terraform-plan-backend         Run terraform plan backend
terraform-plan-datastore       Run terraform plan datastore
terraform-plan-deployment      Run terraform plan deployment
terraform-plan-frontend        Run terraform plan frontend
terraform-plan-iam             Run terraform plan iam
terraform-plan-monitoring      Run terraform plan monitoring
terraform-plan-network         Run terraform plan network
terraform-plan-secret          Run terraform plan secret
upgrade                        Upgrade makefile
```

## License

Apache 2 Licensed. See LICENSE for full details.
