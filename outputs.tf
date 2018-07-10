output "vault-uri" {
  value = "${azurerm_key_vault.tf-vault.vault_uri}"
}

output "vault-name" {
  value = "${azurerm_key_vault.tf-vault.name}"
}