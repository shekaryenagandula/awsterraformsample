variable "instance_name" {
    description = "Instance name"
    type = string
}
variable "subnet_id" {
    description = "subnet_id"
    type = string 
}
variable server_names{
  type=list(string)
  description="server names"
}