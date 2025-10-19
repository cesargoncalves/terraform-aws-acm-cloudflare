module "acm-cloudflare" {
  source = "../../"

  zone_name                 = "example.tld"
  domain_name               = "example.tld"
  subject_alternative_names = ["*.example.tld"]
}
