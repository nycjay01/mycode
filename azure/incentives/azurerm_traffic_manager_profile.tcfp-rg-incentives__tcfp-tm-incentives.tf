# 
resource "azurerm_traffic_manager_profile" "dis-prod-rg-incentives__dis-prod-tm-incentives" {
  name                   = "dis-prod-tm-incentives"
  resource_group_name    = "dis-prod-rg-incentives"
  traffic_routing_method = "Performance"
  profile_status         = "Enabled"

  dns_config {
    relative_name = "dis-prod-tm-incentives"
    ttl           = "300"
  }

  monitor_config {
    protocol = "HTTPS"
    port     = "443"
    path     = "/api/heartbeat"
  }
}
