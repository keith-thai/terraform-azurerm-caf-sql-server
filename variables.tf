variable "tags" {
  description = "(Required) map of tags for the deployment"
}

variable "convention" {
    description = "(Required) Naming convention method to use"
    type        = string
}

variable "prefix" {
    description = "(Optional) You can use a prefix to the name of the resource"
    type        = string
    default     = ""
}

variable "postfix" {
    description = "(Optional) You can use a postfix to the name of the resource"
    type        = string
    default     = ""
}

variable "max_length" {
    description = "(Optional) You can speficy a maximum length to the name of the resource"
    type        = string
    default     = "60"
}

variable "diagnostics_map" {
    description = "(Required) contains the SA and EH details for operations diagnostics"
}

variable "log_analytics_workspace" {
    description = "(Required) contains the log analytics workspace details for operations diagnostics"
}

variable "diagnostics_settings" {
    description = "(Required) configuration object describing the diagnostics"
}

variable "resource_group_name" {
    description = "(Required) Name of the resource group where to create the vnet"
    type        = string
}

variable "location" {
    description = "(Required) Define the region where the resource groups will be created"
    type        = string
}

variable "sql_server"{
    description = "(Required) SQL Server Configuration object"
    # type = object
    # ({
    #     name    = string
    #     version = string
    #     admin   = string
    #
    #     #optional fields
    #     password = string ##if not specified, password will be generated by random
    #     connection_policy = string
    #     extended_auditing_policy = object({
    #         storage_account_access_key  = string
    #         storage_endpoint            = string
    #         retention_in_days           = number
    #     })
    #     elastic_pool = object({
    #         name                = string
    #         edition             = string
    #         dtu                 = number
    #         db_dtu_min          = number
    #         db_dtu_max          = number
    #         pool_size           = number
    #     })
    # })
    
}

variable "subnet_id"{
    description = "(Optional) Subnet identifier for the resource to be created"
    type = string
    default = ""
}

variable "aad_admin"{
    description = "(Optional) Object containing the Azure AD for the SQL Server admin account"
    # type = object({
    #     name        = string #The login name of the principal to set as the server administrator
    #     id          = string #The ID of the principal to set as the server administrator
    #     tenant_id   = string #The Azure Tenant ID
    # })
    default = {}
}

