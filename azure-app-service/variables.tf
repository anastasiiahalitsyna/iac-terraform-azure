variable "group_name" {
  type    = string
  default = "group_resources"
}

variable "group_location" {
  type    = string
  default = "Poland Central"
}

variable "account_tier" {
  type    = string
  default = "Standard"
}


variable "service_plan_size" {
  type    = string
  default = "S1"
}

variable "app_service_name" {
  type    = string
  default = "my-app-service"
}

variable "data_base_name" {
  type    = string
  default = "Database"
}

variable "data_base_type" {
  type    = string
  default = "SQLServer"
}

variable "data" {
  type    = string
  default = "Server=some-server.mydomain.com;Integrated Security=SSPI"
}