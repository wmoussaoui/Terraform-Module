#---- create resource kubernetes cluster -----------

resource "azurerm_kubernetes_cluster" "aks" {
    name                = var.aks_cluster_name
    location            = var.location_var
    resource_group_name = var.rg_name
    dns_prefix          = var.aks_dns_prefix
    kubernetes_version  = var.aks_k8s_version
    role_based_access_control {
      enabled = "true"
    }
    default_node_pool {
        name            = var.name_node_pool
        vm_size         = var.aks_vm_size
        os_disk_size_gb = var.aks_os_disk_size_gb
        vnet_subnet_id	= var.vnet_subnet_id
        enable_auto_scaling = var.enable_auto_scaling
        type            = var.type_auto_scaling
        min_count       = var.min_count 
        max_count       = var.max_count 
        
    }
    service_principal {
          client_id = var.client_id 
          client_secret = var.client_secret

    }
    tags = "${var.tags}"    
   
      }
      
