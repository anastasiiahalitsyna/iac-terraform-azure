variable "group_name" {
  type    = string
  default = "group_resources"
}

variable "group_location" {
  type    = string
  default = "Poland Central"
}

variable "account_name" {
  type    = string
  default = "storage_account"
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "account_type" {
  type    = string
  default = "LRS"
}

variable "container_name" {
  type    = string
  default = "my_container"
}

variable "storage_name" {
  type    = string
  default = "my_storage-account-name"
}

variable "storage_blob_name" {
  type    = string
  default = "my-awesome-content.zip"
}

variable "storage_blob_type" {
  type    = string
  default = "Block"
}

variable "source_name" {
  type    = string
  default = "my-local-file.zip"
}