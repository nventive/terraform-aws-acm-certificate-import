![nventive](https://nventive-public-assets.s3.amazonaws.com/nventive_logo_github.svg?v=2)

# terraform-aws-acm-certificate-import

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg?style=flat-square)](LICENSE) [![Latest Release](https://img.shields.io/github/release/nventive/terraform-aws-acm-certificate-import.svg?style=flat-square)](https://github.com/nventive/terraform-aws-acm-certificate-import/releases/latest)

Terraform module to import an existing certificate into ACM.

---

## Examples

**IMPORTANT:** We do not pin modules to versions in our examples because of the difficulty of keeping the versions in
the documentation in sync with the latest released versions. We highly recommend that in your code you pin the version
to the exact version you are using so that your infrastructure remains stable, and update versions in a systematic way
so that they do not catch you by surprise.

```hcl
module "cert" {
  source = "nventive/acm-certificate-import/aws"
  # We recommend pinning every module to a specific version
  # version = "x.x.x"

  namespace = "eg"
  stage     = "test"
  name      = "app"

  private_key_base64       = filebase64("${path.module}/key.pem")
  certificate_body_base64  = filebase64("${path.module}/cert.pem")
  certificate_chain_base64 = filebase64("${path.module}/chain.pem")
}
```
