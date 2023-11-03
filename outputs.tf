output "id" {
  value       = join("", aws_acm_certificate.default.*.id)
  description = "The ARN of the certificate."
}

output "arn" {
  value       = join("", aws_acm_certificate.default.*.arn)
  description = "The ARN of the certificate."
}
