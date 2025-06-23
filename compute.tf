resource "oci_core_instance" "oracle95_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = var.compartment_ocid#"ocid1.tenancy.oc1..aaaaaaaax6gcv7477ijfzc4dw3ja5ecwbnobiibjoy3wj7spl3uxvrvot2nq"
    shape = var.node_shape#"VM.Standard.E2.1.Micro"
    shape_config {
        ocpus = var.node_flex_shape_ocpus
        memory_in_gbs = var.node_flex_shape_memory
    }

    source_details {
        source_type = "image"
        source_id = data.oci_core_images.InstanceImageOCID.images[0].id#var.node_image_id#"ocid1.image.oc1.ap-sydney-1.aaaaaaaaesnxfz2dfocfi5gr224vvqrktrgquae2qwzcn3wcmwiddmcyv3dq" # Oracle-Linux-9.5-2025.05.19-0
           # instance_source_image_filter_details {
           #     compartment_id = "ocid1.tenancy.oc1..aaaaaaaax6gcv7477ijfzc4dw3ja5ecwbnobiibjoy3wj7spl3uxvrvot2nq"
           #     operating_system = "Oracle Linux"
           #     operating_system_version = "9.5"
           # }
    }

    # Optional
    display_name = var.vm_display_name
    create_vnic_details {
        assign_public_ip = var.public_ip_allowed
        subnet_id = var.subnet_ocid#"ocid1.subnet.oc1.ap-sydney-1.aaaaaaaaf3pcuo47hwuarsc2nqmy5tjg6gpboemnyama7fh3u5ua6n4ajm2a"
    }
    metadata = {
        ssh_authorized_keys = file(var.ssh_public_key_file)
    } 
    preserve_boot_volume = false
}
