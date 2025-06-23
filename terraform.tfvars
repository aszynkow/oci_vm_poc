
#Deploy compartment
compartment_ocid = ""

#Existing Network
vcn_ocid = ""
subnet_ocid = ""

#VM
node_shape = "VM.Standard.A1.Flex" #VM.Standard.E2.1.Micro"
vm_display_name = "Oracle Linux 9.5"
instance_os = "Oracle Linux"
linux_os_version = "9"
node_flex_shape_ocpus  = 2#1
node_flex_shape_memory = 8#1
ssh_public_key_file = "~/.ssh/id_rsa_rove.pub"
public_ip_allowed = "false"

