#----------------------------variable ip public for  ---------------------------

variable "name" {
  default     = ["public-ip", "public-ip2", "public-ip3"]
}
#----------------------ressource-groupe-------------------------------------

  variable "resource_group_name" {
  description = "Name of the Resource Group for the hub virtual network"
  type = string
  default = "rg-name"
  }
#------------------------------location-------------------------------

  variable "location" {
  type = string
  default = "West Europe"
}
#------------------------------allocation_method-------------------------------

  variable "allocation_method" {
  type = string
  default = "Static"
}
#------------------------------sku-------------------------------

  variable "sku" {
  type = string
  default = "Standard"
}
#------------------------------ tags-------------------------------
variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = "map"

  default = {
    tag1 = ""
    tag2 = ""
  }
}
#------------------------------idle_timeout_in_minutes-------------------------------
variable "idle_timeout_in_minutes" {
  type = string
  default = 4
  }
  #------------------------------ ip_version -------------------------------
variable "ip_version" {
  type = string
  default = "IPv4"
  }

