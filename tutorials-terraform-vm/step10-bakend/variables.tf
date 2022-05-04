variable "tenant_id" {
  description = "Azure tenant ID."
  type        = string
  sensitive   = true
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "resource_group_location" {
  description = "Location of the resource group."
  type        = string
}

variable "public_ip" {
  description = "Properties of the public IP."
  type        = map(string)
  default = {
    "name"              = "terraform-lb-ip"
    "allocation_method" = "Static"
    "sku"               = "Standard"
    "domain_name_label" = "lbcfterraformtest"
  }
}

variable "load_balancer" {
  description = "Properties of the load balancer."
  type        = map(string)
  default = {
    "name" = "terraform-lb"
    "sku"  = "Standard"
  }
}

variable "frontend_ip_config_name" {
  description = "Name of the frontend IP configuration."
  type        = string
  default     = "terraform-lb-public-ip-address"
}

variable "backend_address_pool_name" {
  description = "Name of the backend address pool."
  type        = string
  default     = "terraform-lb-backend-pool"
}

variable "lb_applications" {
  description = "Map of the applications using the load balancer."
  type        = map(any)
  default = {
    http = {
      protocol                  = "Tcp",
      frontend_port             = 80,
      backend_port              = 80,
      probe_port                = 80,
      probe_interval_in_seconds = 15,
      number_of_probes          = 2,
      session_persistence       = "SourceIP"
    },
    https = {
      protocol                  = "Tcp",
      frontend_port             = 443,
      backend_port              = 443,
      probe_port                = 443,
      probe_interval_in_seconds = 14,
      number_of_probes          = 3,
      session_persistence       = "SourceIP"
    }
  }
}

variable "backend_resource_group_name" {
  description = "Name of the resource group for backend."
  type        = string
}

variable "backend_storage_account_name" {
  description = "Name of the storage account for backend."
  type        = string
}

variable "backend_container_name" {
  description = "Name of the container for backend."
  type        = string
}

variable "backend_blob_name" {
  description = "Name of the blob for backend."
  type        = string
}
