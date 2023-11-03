locals {
  enabled = module.this.enabled
}

resource "aws_acm_certificate" "default" {
  count = local.enabled ? 1 : 0

  private_key       = base64decode(var.private_key_base64)
  certificate_body  = base64decode(var.certificate_body_base64)
  certificate_chain = base64decode(var.certificate_chain_base64)

  tags = module.this.tags
}
