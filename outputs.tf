output image_details {
    value = data.oci_core_images.InstanceImageOCID.images[0].*
}