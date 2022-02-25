//required variables

variable "name" {
  description = "The name of the network being created"
  type        = string
}

variable "description" {
  description = "The resource must be recreated to modify this field."
  type        = string
  default     = "The network created for your project"
}

variable "auto_create_subnetworks" {
  description = "When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically."
  type        = bool
  default     = false
}

variable "routing_mode" {
  description = "The network-wide routing mode to use."
  type        = string
  default     = "GLOBAL"
}

variable "mtu" {
  description = "The network MTU. Must be a value between 1460 and 1500 inclusive. If set to 0 (meaning MTU is unset), the network will default to 1460 automatically."
  type        = number
  default     = 1460
}

variable "project" {
  description = "The ID of the project where this VPC will be created"
  type        = string
}
variable "tags" {
  type        = list(string)
  description = "this will be used for tagging resources."
}
