variable "sg_resource_group_name" {
 default = []
}

variable "location_var" {
 default = "West Europe"
}

variable "sg_name" {
  type = any
  }
  
  variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = map(string)

  default = [{
        "code_appli" = "fff", 
        "composant_role" = "fff", 
        "environnement" = "fff",
        "Version" = "fff", 
        "proprietaire" = "fff",
        "projet" = "fff",
        "confidentialite" = "fff"}]
}
