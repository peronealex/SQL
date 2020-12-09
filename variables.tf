variable "azurerm_sql_server" {
    default = "alexdb1"
    description = "(optional) describe your variable"
}
variable "resource_group_name" {
    default = "datalake111"
    description = "name of the resource group"  
}

variable "location" {
    default = "westeurope"
    description = "location where to put the resource"  
}

variable "administrator_login" {
    default = "4dm1n157r470r"
    description = "administrator login username"
}

variable "administrator_login_password" {
    default = "4-v3ry-53cr37-p455w0rd"
    description = "password default"  
}

variable "sqlserver_name" {
    default = "example-sqlserver"
    description = "name of the sql"  
}

variable "dbversion" {
    default = "12.0"
    description = "version of the sql database"
}


variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "max_size_gb" {
    default = "4"
    description = "size of the database"
}