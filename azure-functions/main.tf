resource "azurerm_resource_group" "my_resource_group" {
  name     = var.group_name
  location = var.group_location
}


resource "azurerm_storage_account" "storage_account" {
  name                     = var.account_name
  resource_group_name      = azurerm_resource_group.my_resource_group.name
  location                 = azurerm_resource_group.my_resource_group.location
  account_tier             = var.account_tier
  account_replication_type = var.account_type
}

resource "azurerm_app_service_plan" "service_plan" {
  name                = var.service_plan_name
  location            = azurerm_resource_group.my_resource_group.location
  resource_group_name = azurerm_resource_group.my_resource_group.name

  sku {
    tier = var.account_tier
    size = var.service_plan_size
  }
}

resource "azurerm_linux_function_app" "linux_function" {
  name                = var.linux_app_name
  resource_group_name = azurerm_resource_group.my_resource_group.name
  location            = azurerm_resource_group.my_resource_group.location

  storage_account_name       = azurerm_storage_account.storage_account.name
  service_plan_id            = azurerm_app_service_plan.service_plan.id

  site_config {}
}

resource "azurerm_function_app_function" "app_function" {
  name            = var.function_app_name
  function_app_id = azurerm_linux_function_app.linux_function.id
  test_data       = jsonencode({
    "name" = var.test_data_name
  })
  config_json = jsonencode(var.json_code)
}


output "displaying_id" {
  value = azurerm_function_app_function.app_function.id
}