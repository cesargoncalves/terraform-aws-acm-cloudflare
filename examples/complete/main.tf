module "acm-cloudflare" {
  source = "../../"

  zone_name = "example.tld"

  domain_name               = "www.example.tld"
  subject_alternative_names = ["cdn.example.tld"]
}
