variable "cidr_range" {
    description = "cidr range for VPC creation"
    type = string
    validation {
      condition = can(regex("^10.", var.cidr_range))
      error_message= "CIDR range should be between 10.0.0.0-10.255.255.255"
    } 
}
variable "cidr_name" {
  description = "name for VPC"
  type        = string
}
