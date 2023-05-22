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

resource "azurerm_storage_container" "my_storage_container" {
  name                 = var.container_name
  storage_account_name = var.storage_name
}


resource "azurerm_storage_blob" "storage_blob" {
  name                   = var.storage_blob_name
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = azurerm_storage_container.my_storage_container.name
  type                   = var.storage_blob_type
  source                 = var.source_name
}

output "displaying_url" {
  value = azurerm_storage_blob.storage_blob.url
}