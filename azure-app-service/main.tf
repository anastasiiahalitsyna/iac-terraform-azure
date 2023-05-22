resource "azurerm_resource_group" "my_resource_group" {
  name     = var.group_name
  location = var.group_location
}

resource "azurerm_app_service_plan" "my-plan" {
  name                = var.app_service_name
  location            = azurerm_resource_group.my_resource_group.location
  resource_group_name = azurerm_resource_group.my_resource_group.name

  sku {
    tier = var.account_tier
    size = var.service_plan_size
  }
}

resource "azurerm_app_service" "app_service" {
  name                = var.app_service_name
  location            = azurerm_resource_group.my_resource_group.location
  resource_group_name = azurerm_resource_group.my_resource_group.name
  app_service_plan_id = azurerm_app_service_plan.my-plan.id


  connection_string {
    name  = var.data_base_name
    type  = var.data_base_type
    value = var.data
  }
}

output "displaying_ip" {
  value = azurerm_app_service.app_service.outbound_ip_addresses
}