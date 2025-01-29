/**
  * ## Descriptions
  * 
  * Terraform module for the creation of Subnet with optional Network Security Group and Route Table association.
  *
  */

resource "azurerm_subnet" "subnet" {
  resource_group_name = var.resource_group_name

  name                                          = var.name
  virtual_network_name                          = var.vnet_name
  address_prefixes                              = var.address_prefixes
  service_endpoints                             = var.service_endpoints
  private_endpoint_network_policies_enabled     = var.private_endpoint_network_policies_enabled
  private_link_service_network_policies_enabled = var.private_link_service_network_policies_enabled

  dynamic "delegation" {
    for_each = var.delegation

    content {
      name = delegation.value.name
      
      service_delegation {
        name    = delegation.value.service_delegation.name
        actions = delegation.value.service_delegation.actions
      }
    }
  }
}