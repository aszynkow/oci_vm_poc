data "oci_identity_availability_domains" "ads" {
  #provider       = oci.targetregion
  compartment_id = var.tenancy_ocid
}

data "oci_core_images" "InstanceImageOCID" {
  compartment_id           = var.tenancy_ocid
  operating_system         = var.instance_os
  operating_system_version = var.linux_os_version
  shape                    = var.node_shape

  filter {
    name   = "display_name"
    values = ["^.*Oracle[^G]*$"]
    regex  = true
  }
}