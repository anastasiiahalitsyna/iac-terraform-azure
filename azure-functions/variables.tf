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

variable "service_plan_name" {
  type    = string
  default = "app_service_plan-pro"
}

variable "service_plan_size" {
  type    = string
  default = "S1"
}

variable "linux_app_name" {
  type    = string
  default = "linux_function_name"
}

variable "function_app_name" {
  type    = string
  default = "app_function_name"
}

variable "test_data_name" {
  type    = string
  default = "Azure"
}

variable "json_code" {
  type    = string
  default = "{\"bindings\":[{\"authLevel\":\"function\",\"type\":\"httpTrigger\",\"direction\":\"in\",\"name\":\"Request\",\"methods\":[\"get\",\"post\"]},{\"type\":\"http\",\"direction\":\"out\",\"name\":\"$return\"}]}"
}