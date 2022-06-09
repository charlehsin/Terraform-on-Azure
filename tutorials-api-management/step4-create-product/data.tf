data "azurerm_api_management" "example" {
  name                = var.azurerm_api_management_name
  resource_group_name = var.resource_group_name
}

data "azurerm_api_management_api" "example" {
  name                = var.azurerm_api_management_api_name
  api_management_name = var.azurerm_api_management_name
  resource_group_name = var.resource_group_name
  revision            = var.azurerm_api_management_api_revision
}
