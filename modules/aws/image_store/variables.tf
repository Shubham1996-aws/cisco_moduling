variable "bucket_name" {
  type = string
}

variable "privateSubnets2_cidr_block" {
    type = string
    default = ""
}

variable "environment" {
    type = string
    default = ""
}
locals {
    common_tags = {
        DataTaxonomy = "Cisco Operatoins Data"
        Environment = var.environment
        OwnerName = ""
        ResourceOwner = ""
        Security_Compliance = "yes"
        ServiceName        = "Security-stack"
        
    }
}