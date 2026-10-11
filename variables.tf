variable "usage_proxy_subscription_redeemable_users" {
  description = <<EOT
Map of usage_proxy_subscription_redeemable_users, attributes below
Required:
    - subscription_id
    - tenancy_id
    - items (block):
        - email_id (required)
        - first_name (optional)
        - last_name (optional)
Optional:
    - user_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    subscription_id = string
    tenancy_id      = string
    user_id         = optional(string)
    items = list(object({
      email_id   = string
      first_name = optional(string)
      last_name  = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.usage_proxy_subscription_redeemable_users : (
        length(v.items) >= 1
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
}

