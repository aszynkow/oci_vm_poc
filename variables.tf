variable tenancy_ocid {
    description = "Tenancy OCID"
    default = ""
}

variable "user_ocid" {
  description = "User OCID"
  default = ""
}

variable "fingerprint" {
  description = "Fingerprint"
  default = ""
}

variable "private_key_path" {
  description = "API private key path"
  default = ""
}

variable region {
    description = "OCi Region"
    default = ""
}

variable compartment_ocid {
    description = "Tenancy OCID"
    default = ""
}

variable "node_image_id" {
  description = "The OCID of an image for a node instance to use."
  default     = ""
}

variable "node_shape" {
description = "Instance shape to use for master instance."
 default     = "VM.Standard.E2.1.Micro"
}

variable "node_flex_shape_ocpus" {
  description = "Flex Instance shape OCPUs"
  default = 2
}

variable "node_flex_shape_memory" {
  description = "Flex Instance shape Memory (GB)"
  default = 8
}

variable "instance_os" {
  description = "Operating system for compute instances"
  default     = "Oracle Linux"
}

variable "linux_os_version" {
  description = "Operating system version for all Linux instances"
  default     = "9.5"
}

variable vm_display_name {
    default = "Oracle Linux 9.5"
}

variable vcn_ocid {
    default = ""
}

variable subnet_ocid {
    default = ""
}

variable ssh_public_key_file {
  type        = string
  description = "the public ssh key to vm instances"
}

variable public_ip_allowed {
    default = "false"
}