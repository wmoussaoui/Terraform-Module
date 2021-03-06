

#variable "nsg_ids" {
 # description = "A map of subnet name to Network Security Group IDs"
  #type        = map(string)

  #default = [{
   # subnet1 = "nsgid1"
    #subnet3 = "nsgid3"
  #}]
#}


variable "address_prefix" {
  default     = ["10.0.0.0/24"]
}

variable "name" {
  type = list(any) 
 default = []
 
}
variable "resource_group_name" {}
variable "virtual_network_name" {}  

#------------------------------ tags sg------------------------------
variable "tags" {
  description = "The tags to associate with your network and subnets."
 

  default = [{
        "code_appli" = "fff", 
        "composant_role" = "fff", 
        "environnement" = "fff",
        "Version" = "fff", 
        "proprietaire" = "fff",
        "projet" = "fff",
        "confidentialite" = "fff"}]
}
#variable "custom_rules" {
  #description = "Security rules for the network security group using this format name = [priority, direction, access, protocol, source_port_range, destination_port_range, source_address_prefix, destination_address_prefix, description]"
  #type        = list(any)
 # default     = []
#}
variable "sg_name" {
  type = any

}
variable "location_var" {
 default = "West Europe"
}

variable "sg_resource_group_name" {
 default = []
}
#variable "rule_resource_group_name" {
# default = []
#}




 

  
