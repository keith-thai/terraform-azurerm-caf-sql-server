variable "tags" {
  description = "(Required) map of tags for the deployment."
  type        = map
  default     = {}
}

variable convention {
  description = "(Required) Naming convention to be used (check at the naming convention module for possible values)."
  type    = string
  default = "cafrandom"

  validation {
    condition     = contains(["cafrandom", "random", "passthrough", "cafclassic"], var.convention)
    error_message = "Allowed values are cafrandom, random, passthrough or cafclassic."
  }
}

variable "prefix" {
  description = "(Optional) You can use a prefix to the name of the resource."
  type        = string
  default     = ""
}

variable "postfix" {
  description = "(Optional) You can use a postfix to the name of the resource."
  type        = string
  default     = ""
}

variable "max_length" {
  description = "(Optional) You can speficy a maximum length to the name of the resource."
  type        = string
  default     = "60"
}

variable "diagnostics_map" {
  description = "(Required) contains the SA and EH details for operations diagnostics."
}

variable "log_analytics_workspace" {
  description = "(Required) contains the log analytics workspace details for operations diagnostics."
}

variable "diagnostics_settings" {
  description = "(Required) Map with the diagnostics settings. See the required structure in the following example or in the CAF diagnostics module documentation."
}

variable "resource_group_name" {
  description = "(Required) Name of the resource group where to create the resource. Changing this forces a new resource to be created."
  type        = string
}

variable "location" {
  description = "(Required) Specifies the Azure location to deploy the resource. Changing this forces a new resource to be created."
  type        = string
}

variable "sql_server" {
  description = "(Required) SQL Server Configuration object, see Parameters section below."
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

variable "subnet_id_list" {
  description = "(Optional) List of subnet identifiers for the resource to be created."
  type        = map(string)
  default     = {}
}

variable "aad_admin" {
  description = "(Optional) Azure AD object to use as SQL Server administrator."
  # type = object({
  #   admin = {
  #     name      = string #The login name of the principal to set as the server administrator
  #     id        = string #The ID of the principal to set as the server administrator
  #     tenant_id = string #The Azure Tenant ID
  #   }
  # })
  default = {}
}

