variable "vnet_subnet_id" {} 
 


variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = map(string)

  default = {
    tag1 = ""
    tag2 = ""
  }
}
#----------- variables cluster AKS --------------------------
variable "aks_cluster_name"{
  type = string
}
variable "aks_dns_prefix" {
  type = string
  default = "akscluster-swf-fff"
}
variable "aks_k8s_version" {
  type = string
  default = "1.14.8"
}
variable aks_vm_size {
  description = "The size of vm"
  type = string
  default = "Standard_B4ms"
}
variable aks_os_disk_size_gb {
  description = "The size of disk"
  default = 32
}
variable client_id {}

variable client_secret {}


#------------------------ressource-groupe-------------------------------------

  variable "rg_name" {
  description = "Name of the Resource Group for the hub virtual network"
  type = string
  }
#------------------------------location-------------------------------

  variable "location_var" {
  type = string
  default = "West Europe"
}
variable "enable_auto_scaling" {
  default = "true"
}
variable "type_auto_scaling" {
  default = "VirtualMachineScaleSets"
}
variable "min_count" {
  default = "1"
}
variable "max_count" {
  default = "3"
}


variable "name_node_pool" {
    default = "aks"
}









