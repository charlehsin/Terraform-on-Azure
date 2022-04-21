variable "tenant_id" {
  description = "ID of an existing Azure tenant."
  type        = string
  sensitive   = true
}

variable "resource_group_name" {
  description = "Name of the existing resource group."
  type        = string
}

variable "resource_group_location" {
  description = "Location of the existing resource group."
  type        = string
}

variable "public_ip" {
  description = "Properties of the public IP."
  type        = map(string)
  default = {
    "name"              = "terraform_ip"
    "allocation_method" = "Static"
    "sku"               = "Standard"
    "domain_name_label" = "tfvmcftest"
  }
}

variable "network_interface" {
  description = "Properties of the network interface."
  type        = map(string)
  default = {
    "name"                  = "terraform_netinf"
    "ip_configuration_name" = "terraform_netinf_ipconf"
  }
}

variable "subnet_id" {
  description = "ID of the existing subnet."
  type        = string
  sensitive   = true
}

variable "security_group_id" {
  description = "ID of the existing security group."
  type        = string
  sensitive   = true
}

variable "virtual_machine_name" {
  description = "Name of the virtual machine."
  type        = string
  default     = "tfvmcftest"
}

variable "virtual_machine_size" {
  description = "Size of the virtual machine."
  type        = string
  default     = "Standard_D2s_v4"
}

variable "virtual_machine_admin_username" {
  description = "Admin username of the virtual machine."
  type        = string
  sensitive   = true
}

variable "virtual_machine_admin_password" {
  description = "Admin password of the virtual machine."
  type        = string
  sensitive   = true
}

variable "virtual_machine_timezone" {
  description = "Timezone of the virtual machine."
  type        = string
  default     = "Pacific Standard Time"
}

variable "source_image_sku" {
  description = "SKU of the source image."
  type        = string
  default     = "2019-Datacenter"
}

variable "file_upload_target" {
  description = "Target directory of the file upload."
  type        = string
  default     = "C:/upload_files"
}

variable "remote_commands" {
  description = "List of remote commands to run."
  type        = list(string)
  default = [
    "powershell.exe -sta -ExecutionPolicy Unrestricted -file C:/upload_files/setup/setup_iis.ps1",
    "powershell.exe -sta -ExecutionPolicy Unrestricted -file C:/upload_files/setup/setup_netadaptor.ps1",
    "powershell.exe -sta -ExecutionPolicy Unrestricted -file C:/upload_files/setup/setup_join_domain.ps1",
    "powershell.exe -sta -ExecutionPolicy Unrestricted -Command {Remove-Item C:/upload_files/setup/setup_join_domain.ps1 -Force}",
  ]
}

variable "virtual_network_name" {
  description = "Name of the existing virtual network."
  type        = string
}

variable "load_balancer_name" {
  description = "Name of the existing load balancer."
  type        = string
}

variable "backend_address_pool_name" {
  description = "Name of the existing backend address pool."
  type        = string
}

variable "backend_address_pool_address_name" {
  description = "Name of the backend address pool address."
  type        = string
  default     = "terraform-lb-backend-pool-addr"
}
