variable "enabled_paid_resources" {
  default     = true
  type        = "string"
  description = "WARNING: If false, the paid resources are destroyed. This variable is used during testing. Be sure to specify true, if production environment."
}
