variable "vpc_id" {
  type        = string
  default     = ""
  description = "vpc_id"
}

variable "cidr_block" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "enable_public" {
  type = bool
}

