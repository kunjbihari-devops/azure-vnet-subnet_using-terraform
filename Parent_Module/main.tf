module "resource_group" {

  source = "../Child_Module/azurerm_resource_group"

  rg_name = var.rg_name
  location = var.location

}

module "virtual_network" {

  source = "../Child_Module/azurerm_virtual_network"

  vnet_name = var.vnet_name

  location = var.location

  rg_name = module.resource_group.resource_group_name

  address_space = var.address_space

}

module "subnet" {

  source = "../Child_Module/azurerm_subnet"

  subnet_name = var.subnet_name

  rg_name = module.resource_group.resource_group_name

  vnet_name = module.virtual_network.vnet_name

  subnet_prefix = var.subnet_prefix

}

