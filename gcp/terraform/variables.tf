#### Networking ####
variable "network_name" {
  description = "The name of the Network"
}

#### Google Project ####
variable "project" {
  description = "The ID of the Google Cloud Project"
}

#### Google Region ####
variable "region" {
  default = "europe-west1"
  description = "The Google Region where the Network should be created"
}

#### Credential ####
#variable "credentials" {
#  default = "credentials.json"
#  description = " Path to the credential file"
#}

