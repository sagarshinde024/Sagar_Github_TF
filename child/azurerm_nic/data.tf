data "azurerm_subnet" "data_sub" {
  for_each             = var.nics
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "pip_sub" {
  for_each            = var.nics
  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
}