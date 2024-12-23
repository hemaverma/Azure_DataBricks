variable "region" {
  default = "East US"
}

variable "environment" {
  default = "stg"
}

variable "subscription_id" {
  default = "aa491e2b-0acc-4729-be48-2eac028ab1c4"
}

variable "aad_groups" {
  default = ["account_unity_admin", "data_engineer", "data_analyst", "data_scientist"]
}

variable "metastore_name"{
  default = "metastore_azure_stg"
}

variable "account_id" {
  description = "Databricks Account Level ID"
  default = "b4fa54e6-433b-4bda-b689-4631e7882ea3"
}