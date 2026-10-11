output "usage_proxy_subscription_redeemable_users_id" {
  description = "Map of id values across all usage_proxy_subscription_redeemable_users, keyed the same as var.usage_proxy_subscription_redeemable_users except keys with no id are omitted"
  value       = { for k, v in oci_usage_proxy_subscription_redeemable_user.usage_proxy_subscription_redeemable_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "usage_proxy_subscription_redeemable_users_items" {
  description = "Map of items values across all usage_proxy_subscription_redeemable_users, keyed the same as var.usage_proxy_subscription_redeemable_users except keys with no items are omitted"
  value       = { for k, v in oci_usage_proxy_subscription_redeemable_user.usage_proxy_subscription_redeemable_users : k => v.items if v.items != null && length(v.items) > 0 }
}
output "usage_proxy_subscription_redeemable_users_subscription_id" {
  description = "Map of subscription_id values across all usage_proxy_subscription_redeemable_users, keyed the same as var.usage_proxy_subscription_redeemable_users except keys with no subscription_id are omitted"
  value       = { for k, v in oci_usage_proxy_subscription_redeemable_user.usage_proxy_subscription_redeemable_users : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
}
output "usage_proxy_subscription_redeemable_users_tenancy_id" {
  description = "Map of tenancy_id values across all usage_proxy_subscription_redeemable_users, keyed the same as var.usage_proxy_subscription_redeemable_users except keys with no tenancy_id are omitted"
  value       = { for k, v in oci_usage_proxy_subscription_redeemable_user.usage_proxy_subscription_redeemable_users : k => v.tenancy_id if v.tenancy_id != null && length(v.tenancy_id) > 0 }
}
output "usage_proxy_subscription_redeemable_users_user_id" {
  description = "Map of user_id values across all usage_proxy_subscription_redeemable_users, keyed the same as var.usage_proxy_subscription_redeemable_users except keys with no user_id are omitted"
  value       = { for k, v in oci_usage_proxy_subscription_redeemable_user.usage_proxy_subscription_redeemable_users : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

