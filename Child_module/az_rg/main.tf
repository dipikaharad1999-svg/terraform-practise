resource "azurerm_resource_group" "rg1" {
    for_each = var.test_variable
  name     = each.value.name
  location = each.value.location

}