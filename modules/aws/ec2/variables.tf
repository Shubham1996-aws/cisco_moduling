variable "instance_type" {
    type = string
    default = ""
}

variable "ami_id" {
    type = string
}

variable "instanceCount" {
    type = number
}

variable "vpn_range" {
  type = list(string)
}
variable "vpc_id" {
  type = string
}
variable "subnet_id" {
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