variable "enable_destruction" {
  default     = false
  type        = "string"
  description = "WARNING: If true, the S3 bucket can be destroyed. This variable is used during testing. Be sure to specify false, if production environment."
}
