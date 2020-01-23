variable "address_space" {
}

variable "location" {
  description = "Azure location string - see 'az account list-locations' output for valid strings"
  default     = "westeurope"
}

variable "name" {
  default     = ["sampleservice"]
}

variable "environment" {
  description = "The environment in which this resource is located - defaults to `development`"
  default     = "development"
}

variable "fault_domain_count" {
  description = "Number of fault domains in the availability set.  Default is 3 as this the value applicable to westeurope region"
  default     = 3
}

variable "resource_group_name" {
  description = "(Required) Specifies the name of the resource group the Virtual Network is located in.  This will be created dynamically if not explicitly set"
  default     = []
}

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
