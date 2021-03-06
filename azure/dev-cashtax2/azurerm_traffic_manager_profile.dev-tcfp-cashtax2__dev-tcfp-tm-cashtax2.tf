# 
resource "azurerm_traffic_manager_profile" "dis-prod-cashtax2__dis-prod-tm-cashtax2" {
  name                   = "dis-prod-tm-cashtax2"
  resource_group_name    = "dis-prod-cashtax2"
  traffic_routing_method = "Performance"
  profile_status         = "Enabled"

  dns_config {
    relative_name = "dis-prod-tm-cashtax2"
    ttl           = "300"
  }

  monitor_config {
    protocol = "HTTPS"
    port     = "443"
    path     = "/heartbeat"
  }
}
