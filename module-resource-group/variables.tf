variable "location" {
  type = string
  description = "The location to deploy the resource group in to."
}

variable "name" {
  description = "The name of the resource group."
  default = ["infra-rg-network-hub", "infra-rg-ad-hub", "infra-rg-aks-hub"]
}

variable "tags" {
  #type = map(string)
  description = "List of tags to assign to the resource group."
  default = [{
        "code_appli" = "fff", 
        "composant_role" = "fff", 
        "environnement" = "fff",
        "Version" = "fff", 
        "proprietaire" = "fff",
        "projet" = "fff",
        "confidentialite" = "fff"}]
}

