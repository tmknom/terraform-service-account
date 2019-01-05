variable "enable_destruction" {
  default     = false
  type        = "string"
  description = "WARNING: If true, the ALB and S3 bucket can be destroyed. This variable is used during testing. Be sure to specify false, if production environment."
}

variable "enabled_paid_resources" {
  default     = true
  type        = "string"
  description = "WARNING: If false, the paid resources are destroyed. This variable is used during testing. Be sure to specify true, if production environment."
}
