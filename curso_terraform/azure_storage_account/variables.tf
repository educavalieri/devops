variable "location" {
  description = "Região dos recursos da Azure"
  type        = string
  default     = "Brazil South"
}

variable "account_tier" {
  description = "Tier da storage account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Azure account Replicantion type"
  type        = string
  default     = "LRS"
}

variable "resource_group_name" {
  description = "Nome do resource group"
  type        = string
  default     = "rg-curso-terraform"
}

variable "storage_account_name" {
  description = "Nome da storage account"
  type        = string
  default     = "educavalieriterraform"
}

variable "container_name" {
  description = "Nome do container"
  type        = string
  default     = "container-terraform"

}