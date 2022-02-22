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
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [
  "true",
  "false"
   ],
   "default":false,
   "description": "When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically."
}
EOT
  type        = bool
  default     = false
}

variable "routing_mode" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [
  "REGIONAL",
  "GLOBAL"
   ],
   "default":"GLOBAL",
   "description": "The network-wide routing mode to use."
}
EOT
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
