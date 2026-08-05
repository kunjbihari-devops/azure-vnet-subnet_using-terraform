output "resource_group" {
  value = module.resource_group.resource_group_name
}

output "vnet" {
  value = module.virtual_network.vnet_name
}

output "subnet" {
  value = module.subnet.subnet_name
}