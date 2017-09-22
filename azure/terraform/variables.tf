variable "network_name" {
  default = "cpa-instance"
  description = "The name of the deployment"
}
# Azure specific vars

variable "region" {
  description = "Azure region to deploy in"
}

# For help on getting the 4 variables below, see: https://www.terraform.io/docs/providers/azurerm/aut

variable "subscription_id" {
  description = "ID of the Azure subscription to use"
}

variable "client_id" {
  description = "ID of the Azure client to use"
}

variable "client_secret" {
  description = "Value of the Azure client secret"
}

variable "tenant_id" {
  description = "ID of the Azure tenant to use"
}
