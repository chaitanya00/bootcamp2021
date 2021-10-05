variable "ami" {
  type = string
  description = "ami id"
  default = ""
}

variable "instance_type" {
  type = string
  description = "instance type"
  default = ""
}

variable "subnet_id" {
  type = string
  description = "subnet id"
  default = ""
}

variable "key_name" {
  type = string
  description = "key name"
  default = ""
}

variable "user_data" {
  type = string
  description = "user data"
  default = ""
}

variable "VPC_SG" {
  type = list(string)
  description = "list of vpc sg"
  default     = null
}

