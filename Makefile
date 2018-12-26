# https://github.com/tmknom/template-terraform-module
TERRAFORM_VERSION := 0.11.11
-include .Makefile.terraform

.Makefile.terraform:
	curl -sSL https://raw.githubusercontent.com/tmknom/template-terraform-aws-account/master/Makefile.terraform -o .Makefile.terraform

# Constant definitions
AUDIT_DIR := ./audit
BACKEND_DIR := ./backend
DATASTORE_MYSQL_DIR := ./datastore/mysql
DATASTORE_REDIS_DIR := ./datastore/redis
DEPLOYMENT_DIR := ./deployment
FRONTEND_DIR := ./frontend
IAM_DIR := ./iam
MONITORING_DIR := ./monitoring
NETWORK_DIR := ./network
SECRET_DIR := ./secret

# Define TF_VAR_terraform_backend_bucket_name and TF_VAR_enable_destruction in environment variable in advance.
TERRAFORM_BACKEND_BUCKET_NAME := $${TF_VAR_terraform_backend_bucket_name}
ENABLE_DESTRUCTION := $${TF_VAR_enable_destruction:-false}

TERRAFORM_INIT_OPTION := -backend-config="bucket=${TERRAFORM_BACKEND_BUCKET_NAME}"
TERRAFORM_BACKEND_BUCKET_NAME_OPTION := -var terraform_backend_bucket_name=${TERRAFORM_BACKEND_BUCKET_NAME}
ENABLE_DESTRUCTION_OPTION := -var enable_destruction=${ENABLE_DESTRUCTION}
TERRAFORM_OPTIONS := ${TERRAFORM_BACKEND_BUCKET_NAME_OPTION} ${ENABLE_DESTRUCTION_OPTION}

# all
plan-all: plan-audit plan-backend plan-datastore plan-deployment plan-frontend plan-iam plan-monitoring plan-network plan-secret ## Run terraform plan all


# audit
plan-audit: ## Run terraform plan audit
	$(call terraform,${AUDIT_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${AUDIT_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

apply-audit: ## Run terraform apply audit
	$(call terraform,${AUDIT_DIR},apply,${TERRAFORM_OPTIONS})

destroy-audit: ## Run terraform destroy audit
	$(call terraform,${AUDIT_DIR},destroy,${TERRAFORM_OPTIONS})


# backend
plan-backend: ## Run terraform plan backend
	$(call terraform,${BACKEND_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${BACKEND_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

apply-backend: ## Run terraform apply backend
	$(call terraform,${BACKEND_DIR},apply,${TERRAFORM_OPTIONS})

destroy-backend: ## Run terraform destroy backend
	$(call terraform,${BACKEND_DIR},destroy,${TERRAFORM_OPTIONS})


# datastore/mysql
plan-datastore-mysql: ## Run terraform plan datastore/mysql
	$(call terraform,${DATASTORE_MYSQL_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${DATASTORE_MYSQL_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

apply-datastore-mysql: ## Run terraform apply datastore/mysql
	$(call terraform,${DATASTORE_MYSQL_DIR},apply,${TERRAFORM_OPTIONS})

destroy-datastore-mysql: ## Run terraform destroy datastore/mysql
	$(call terraform,${DATASTORE_MYSQL_DIR},destroy,${TERRAFORM_OPTIONS})


# datastore/redis
plan-datastore-redis: ## Run terraform plan datastore/redis
	$(call terraform,${DATASTORE_REDIS_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${DATASTORE_REDIS_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

apply-datastore-redis: ## Run terraform apply datastore/redis
	$(call terraform,${DATASTORE_REDIS_DIR},apply,${TERRAFORM_OPTIONS})

destroy-datastore-redis: ## Run terraform destroy datastore/redis
	$(call terraform,${DATASTORE_REDIS_DIR},destroy,${TERRAFORM_OPTIONS})


# deployment
plan-deployment: ## Run terraform plan deployment
	$(call terraform,${DEPLOYMENT_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${DEPLOYMENT_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

apply-deployment: ## Run terraform apply deployment
	$(call terraform,${DEPLOYMENT_DIR},apply,${TERRAFORM_OPTIONS})

destroy-deployment: ## Run terraform destroy deployment
	$(call terraform,${DEPLOYMENT_DIR},destroy,${TERRAFORM_OPTIONS})


# frontend
plan-frontend: ## Run terraform plan frontend
	$(call terraform,${FRONTEND_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${FRONTEND_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

apply-frontend: ## Run terraform apply frontend
	$(call terraform,${FRONTEND_DIR},apply,${TERRAFORM_OPTIONS})

destroy-frontend: ## Run terraform destroy frontend
	$(call terraform,${FRONTEND_DIR},destroy,${TERRAFORM_OPTIONS})


# iam
plan-iam: ## Run terraform plan iam
	$(call terraform,${IAM_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${IAM_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

apply-iam: ## Run terraform apply iam
	$(call terraform,${IAM_DIR},apply,${TERRAFORM_OPTIONS})

destroy-iam: ## Run terraform destroy iam
	$(call terraform,${IAM_DIR},destroy,${TERRAFORM_OPTIONS})


# monitoring
plan-monitoring: ## Run terraform plan monitoring
	$(call terraform,${MONITORING_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${MONITORING_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

apply-monitoring: ## Run terraform apply monitoring
	$(call terraform,${MONITORING_DIR},apply,${TERRAFORM_OPTIONS})

destroy-monitoring: ## Run terraform destroy monitoring
	$(call terraform,${MONITORING_DIR},destroy,${TERRAFORM_OPTIONS})


# network
plan-network: ## Run terraform plan network
	$(call terraform,${NETWORK_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${NETWORK_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

apply-network: ## Run terraform apply network
	$(call terraform,${NETWORK_DIR},apply,${TERRAFORM_OPTIONS})

destroy-network: ## Run terraform destroy network
	$(call terraform,${NETWORK_DIR},destroy,${TERRAFORM_OPTIONS})


# secret
plan-secret: ## Run terraform plan secret
	$(call terraform,${SECRET_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${SECRET_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

apply-secret: ## Run terraform apply secret
	$(call terraform,${SECRET_DIR},apply,${TERRAFORM_OPTIONS})

destroy-secret: ## Run terraform destroy secret
	$(call terraform,${SECRET_DIR},destroy,${TERRAFORM_OPTIONS})
