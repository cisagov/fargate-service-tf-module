# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------
variable "namespace" {
  type = string
}

variable "stage" {
  type = string
}

variable "name" {
  type = string
}

variable "container_definition" {
  type = string
}

variable "container_name" {
  type = string
}

variable "container_port" {
  type = number
}

variable "vpc_id" {
  type = string
}

variable "load_balancer_arn" {
  type = string
}

variable "load_balancer_port" {
  type = number
}

variable "subnet_ids" {
  type = list(string)
}


variable "security_group_ids" {
  type = list(string)
}

variable "memory" {
  type = number
}

variable "cpu" {
  type = number
}

variable "https_cert_arn" {
  type = string
}


# ------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------
variable "iam_policy_document" {
  type    = string
  default = null
}

variable "container_protocol" {
  type    = string
  default = "HTTP"
}

variable "health_check_healthy_threshold" {
  type    = number
  default = 3
}

variable "health_check_unhealthy_threshold" {
  type    = number
  default = 3
}

variable "desired_count" {
  type    = number
  default = 1
}

variable "health_check_interval" {
  type    = number
  default = 60
}

variable "health_check_path" {
  type    = string
  default = "/"
}

variable "health_check_codes" {
  type    = string
  default = "200,202"
}
