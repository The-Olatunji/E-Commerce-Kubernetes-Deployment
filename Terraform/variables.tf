# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_version" {
  description = "cluster version"
  type = string
  default = "1.29"
}

variable "cluster_name" {
  description = "cluster name"
  type = string
  default = "altschool-eks"
}
variable "vpc_name" {
  description = "value of vpc name"
  type = string
  default = "altschool-vpc"
}
variable "vpc_cidr" {
  description = "value of vpc cidr"
  type = string
  default = "10.0.0.0/16"
}