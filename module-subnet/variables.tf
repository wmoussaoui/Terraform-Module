variable "address_prefix" {
  default     = ["10.0.0.0/24"]
}

variable "name" {
 default = []
 
}
variable "resource_group_name" {}
variable "virtual_network_name" {}  

#------------------------------ tags sg------------------------------
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
  
