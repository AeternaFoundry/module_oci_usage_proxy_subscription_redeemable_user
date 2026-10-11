resource "oci_usage_proxy_subscription_redeemable_user" "usage_proxy_subscription_redeemable_users" {
  for_each = var.usage_proxy_subscription_redeemable_users

  subscription_id = each.value.subscription_id
  tenancy_id      = each.value.tenancy_id
  user_id         = each.value.user_id

  dynamic "items" {
    for_each = each.value.items
    content {
      email_id   = items.value.email_id
      first_name = items.value.first_name
      last_name  = items.value.last_name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

