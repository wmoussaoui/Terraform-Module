#------------------------------container_access_type-------------------------------
  variable "container_access_type" {
  type = string
  default = "private"
}
#------------------------container-account-ressource-------------------------------------
  variable "name" {
  description = "Name of the Resource container account"
  default = ["tfstate-hub"]
  }
#------------------------storage-accounte-ressource------------------------------------- 
  variable "storage_account_name" {
  type = string
  default = "rg-hub-virtual-network" 
  }
