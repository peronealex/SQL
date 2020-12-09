resource "azurerm_sql_server" "DB1" {
  name                         = var.azurerm_sql_server
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.dbversion
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
}

resource "azurerm_mssql_database" "sql" {
  name           = var.azurerm_sql_server
  server_id      = azurerm_sql_server.DB1.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = var.max_size_gb
  read_scale     = true
  sku_name       = "BC_Gen5_2"
  zone_redundant = true
/*
  extended_auditing_policy {
    storage_endpoint                        = azurerm_storage_account.DB1.primary_blob_endpoint
    storage_account_access_key              = azurerm_storage_account.DB1.primary_access_key
    storage_account_access_key_is_secondary = true
    retention_in_days                       = 6
  }*/
  tags = var.tags
}