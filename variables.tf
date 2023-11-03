variable "private_key_base64" {
  sensitive   = true
  type        = string
  description = "The certificate's PEM-formatted private key base64-encoded."
}

variable "certificate_body_base64" {
  sensitive   = true
  type        = string
  description = "The certificate's PEM-formatted public key base64-encoded."
}

variable "certificate_chain_base64" {
  default     = ""
  description = "The certificate's PEM-formatted chain base64-encoded."
}
