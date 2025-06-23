
#Deploy compartment
compartment_ocid = "ocid1.compartment.oc1..aaaaaaaaxglpyyad63ziqutwu77w3eg7gh7zf3cpx332ssr6gtz22yldvdbq"

#Existing Network
vcn_ocid = "ocid1.vcn.oc1.ap-melbourne-1.amaaaaaajlkbyliauvy4z4xdhaot64jj7oz7qvh6es5yv4ma3aqcgh5ksa6a"#"ocid1.vcn.oc1.ap-sydney-1.amaaaaaajlkbylia5ihdd3u35qim3k2qyez34543g4cvcg2jayp72ihfaiga"
subnet_ocid = "ocid1.subnet.oc1.ap-melbourne-1.aaaaaaaaijcc2ini7cicmps6apmhvpfydlg7rhiik4zq3z527oifajfaavja"#"ocid1.subnet.oc1.ap-sydney-1.aaaaaaaablp5r3hwmwdoj7ydn3t67uixq4yvn3iofkgxckvdhtssr56wcqna"

#VM
node_shape = "VM.Standard.A1.Flex" #VM.Standard.E2.1.Micro"
vm_display_name = "Oracle Linux 9.5"
instance_os = "Oracle Linux"
linux_os_version = "9"
node_flex_shape_ocpus  = 2#1
node_flex_shape_memory = 8#1
ssh_public_key_file = "~/.ssh/your_key.pub"
public_ip_allowed = "false"

