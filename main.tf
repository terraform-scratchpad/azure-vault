#
# Staging Key Vault
#

provider "azurerm" {
  version = "1.12.0"
}

resource "azurerm_key_vault" "tf-vault" {
  name = "tf-vault"
  location = "${var.location}"
  tenant_id = "${var.tenant_id}"
  resource_group_name = "${var.resource_group_name}"

  "sku" {
    name = "standard"
  }

  access_policy {
    tenant_id = "${var.tenant_id}"
    object_id = "${var.owner_object_id}"
    key_permissions = [
      "list"
    ]
    secret_permissions = [
      "list",
      "get"
    ]
    certificate_permissions = [
      "list"
    ]
  }

  access_policy {
    tenant_id = "${var.tenant_id}"
    object_id = "${var.object_id}"
    key_permissions = [
      "get",
      "create",
      "list",
      "delete"
    ]
    secret_permissions = [
      "set",
      "get",
      "list",
      "delete"
    ]
    certificate_permissions = [
      "list",
      "create",
      "get"
    ]
  }

  tags = "${var.tags}"
}

