variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in which to create the subnet."
}

variable "name" {
  type        = string
  description = "The name of the Subnet."
}

variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network to attach the subnet to."
}

variable "address_prefixes" {
  type        = list(string)
  description = "The address prefixes to use for the Subnet."
}

variable "service_endpoints" {
  type        = list(string)
  description = "The list of Service Endpoints to associate with the Subnet. Possible values include Microsoft.AzureActiveDirectory, Microsoft.AzureCosmosDB, Microsoft.ContainerRegistry etc."
}

variable "private_endpoint_network_policies_enabled" {
  type        = String
  description = " (Optional) Enable or Disable network policies for the private endpoint on the subnet. Possible values are Disabled, Enabled, NetworkSecurityGroupEnabled and RouteTableEnabled. Defaults to Disabled."
  default     = "Disabled"
}

variable "private_link_service_network_policies_enabled" {
  type        = bool
  description = "Enable or Disable network policies for the private link service on the subnet. Must be set to False if using Private Link Service on a given subnet."
  default     = false
}

variable "delegation" {
  description = "Service delegation details for the subnet."
  default     = {}
}
