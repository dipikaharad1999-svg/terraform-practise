module "resource_group_name" {
  source = "../Child_module/az_rg"
  test_variable = var.test_variable
}
module "vnet" {
    depends_on = [ module.resource_group_name ]
  source = "../Child_module/az_vnet"
  variable_vnet = var.variable_vnet
}
module "subnet" {
    depends_on = [ module.vnet]
  source = "../Child_module/az_subnet"
  subnet_variable = var.subnet_variable
}
module "storage_account" {
    depends_on = [ module.resource_group_name ]
  source = "../Child_module/storage_account"
  variable_storage_account = var.variable_storage_account
}