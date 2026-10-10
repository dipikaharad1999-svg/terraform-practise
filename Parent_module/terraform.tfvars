test_variable = {
  vm1 =  {
name     = "testRG"
location = "West US"
    }
}
 subnet_variable = {
    subnet1 = {
  name                 = "test-subnet"
  resource_group_name  = "testRG"
  virtual_network_name = "vnet-network"
  address_prefixes     = ["10.0.1.0/24"]
    }
 }
  variable_vnet = {
    vnet9 = {
  name                = "vnet-network"
  location            = "westus"
  resource_group_name = "testRG"
  address_space       = ["10.0.0.0/16"]

    }
 }
   variable_storage_account = {
    stg1 = {
  name                     = "stg09"
  resource_group_name      = "testRG"
  location                 = "westus"
  account_tier             = "Standard"
  account_replication_type = "GRS"
    }
  }