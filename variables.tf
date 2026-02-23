variable "zone_name" {
  description = "The Name of the zone to contain this record"
  type        = string
}

variable "domain_name" {
  description = "A domain name for which the certificate should be issued"
  type        = string
}

variable "subject_alternative_names" {
  description = "A list of domains that should be SANs in the issued certificate"
  type        = list(string)
  default     = []
}
