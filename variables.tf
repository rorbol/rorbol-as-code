variable "zones" {
  type = map(object({
    disable_dnssec = optional(bool, false)
    webredirect    = optional(string)
    email          = optional(string)
    postmaster     = optional(string)

    records = optional(map(object({
      type   = string
      values = set(string)
      ttl    = optional(number)
    })), {})
  }))

  description = <<-EOL
    A map of AWS Route53 zones and associated DNS records:

    Key   : Domainname for the Route53 zone
    Value : 
      organization_scope : Wether to shared with all repositories in organization
      variables          : A map op variables in the set
        Key   : The variable key
        Value :
          value     : The variable value
          sensitive : Wether the variable should be marked as sensitive
  EOL
}

variable "aws_access_key_id" {
  type        = string
  description = "The AWS access key."
}

variable "aws_secret_access_key" {
  type        = string
  sensitive   = true
  description = "The AWS secret key."
}
