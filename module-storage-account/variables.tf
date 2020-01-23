 #------------------------storage-accounte-ressource------------------------------------- 
  variable "name" {
  default = ["backendhub"] 
  }
  
#------------------------ressource-groupe-------------------------------------
  variable "resource_group_name" {
  description = "Name of the Resource Group for the hub virtual network"
  type = string
  default = "rg-hub-virtual-network"
  }
#------------------------------location-------------------------------
  variable "location" {
  type = string
  default = "West Europe"
}

#------------------------------account_tier-------------------------------
  variable "account_tier" {
  type = string
  default = "Standard"
}
#------------------------------account_replication_type-------------------------------
  variable "account_replication_type" {
  type = string
  default = "LRS"
}

#------------------------------ tags-------------------------------
variable "tags" {
  description = "The tags to associate with your network and subnets."
  #type        = map(string)

  default = [{
        "code_appli" = "fff", 
        "composant_role" = "fff", 
        "environnement" = "fff",
        "Version" = "fff", 
        "proprietaire" = "fff",
        "projet" = "fff",
        "confidentialite" = "fff"}]
}

