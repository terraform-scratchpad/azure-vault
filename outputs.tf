output "vault-uri" {
  value = "${azurerm_key_vault.vault.vault_uri}"
}

output "vault-name" {
  value = "${azurerm_key_vault.vault.name}"
}