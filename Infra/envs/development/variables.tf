variable "region" {
  default = "East US 2"
}

variable "environment" {
  default = "dev"
}

variable "subscription_id" {
  default = "334f902c-99ae-4637-9967-767272b6922c"
}
//Please create these AD groups manually
variable "aad_groups" {
  default = ["databricks_unity_admin", "databricks_data_engineer", "databricks_data_analyst", "databricks_data_scientist"]
}

variable "metastore_name"{
  default = "metastore_azure_eastus2"
}
// To Do .. how to retreive databrick acct id
variable "account_id" {
  description = "Databricks Account Level ID"
  default = "8db9b8d9-aefe-4ad1-ad15-4e494f160a82"
}