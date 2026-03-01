# AWS ACM Cloudflare Terraform module

Terraform module to create an AWS ACM certificate with Cloudflare DNS validation.

<!-- BEGIN_TF_DOCS -->
```hcl
module "acm-cloudflare" {
  source = "../../"

  zone_name = "example.tld"

  domain_name               = "www.example.tld"
  subject_alternative_names = ["cdn.example.tld"]
}
```
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6.34.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | >= 5.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 6.34.0 |
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | >= 5.5.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | A domain name for which the certificate should be issued | `string` | n/a | yes |
| <a name="input_subject_alternative_names"></a> [subject\_alternative\_names](#input\_subject\_alternative\_names) | A list of domains that should be SANs in the issued certificate | `list(string)` | `[]` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | The Name of the zone to contain this record | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acm_certificate_arn"></a> [acm\_certificate\_arn](#output\_acm\_certificate\_arn) | The ARN of the certificate |
<!-- END_TF_DOCS -->