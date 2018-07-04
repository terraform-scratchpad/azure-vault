variable "location" {
  description = "geographical location"
}

variable "resource_group_name" {
  description = "main resource group"
}

variable "tenant_id" {
  description = "service principal tenant id"
}

variable "object_id" {
  description = "service principal object id"
}

variable "owner_object_id" {
  description = "an owner object id used only to list/view keys/secrets on the UI"
}