variable "region" {
  type        = string
  description = "Enter region"
  default     = ""
}

variable "key_name" {
  type        = string
  description = "Provide key pair name"
  default     = ""
}
variable "key_file" {
  type        = string
  description = "Provide key file location"
  default     = ""
}
variable "instance_type" {
  type        = string
  description = "Provide instance type"
  default     = ""
}
variable "instance_class" {
  type        = string
  description = "Provide instance type"
  default     = ""
}

variable "vpc_main_cidr_block" {
  type        = string
  description = "provide vpc cidr block"
  default     = ""
}
variable "vpc_public1_cidr_block" {
  type        = string
  description = "provide subnet 1 cidr block"
  default     = ""
}
variable "vpc_public2_cidr_block" {
  type        = string
  description = "provide subnet 2 cidr block"
  default     = ""
}
variable "vpc_public3_cidr_block" {
  type        = string
  description = "provide subnet 3 cidr block"
  default     = ""
}
variable "default_cidr_block" {
  type        = string
  description = "provide default cidr block"
  default     = ""
}

variable "vpc_private1_cidr_block" {
  type        = string
  description = "provide private 1 cidr block"
  default     = ""
}
variable "vpc_private2_cidr_block" {
  type        = string
  description = "provide private 2 cidr block"
  default     = ""
}
variable "vpc_private3_cidr_block" {
  type        = string
  description = "provide private 3 cidr block"
  default     = ""
}

variable "root_volume_size" {}

variable "database_name" {}
variable "database_user" {}
variable "database_password" {}

# variable "private_key" {}