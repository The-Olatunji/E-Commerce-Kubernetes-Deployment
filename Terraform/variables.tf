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
variable "eks_version" {
 default = "20.8.5"
}

variable "vpc_name" {
  description = "value of vpc name"
  type = string
  default = "altschool-vpc"
}
variable "vpc_version" {
  type = string
 default = "5.8.1"
}
variable "vpc_cidr" {
  description = "value of vpc cidr"
  type = string
  default = "10.0.0.0/16"
}
variable "private_subnet_1_cidr" {
  description = "value of private subnet 1 cidr"
  type = string
  default = "10.0.1.0/24"
}

variable "private_subnet_2_cidr" {
  description = "value of private subnet 2 cidr"
  type = string
  default = "10.0.2.0/24"
}

variable "private_subnet_3_cidr" {
  description = "value of private subnet 3 cidr"
  type = string
  default = "10.0.3.0/24"
}

variable "public_subnet_1_cidr" {
  description = "value of public subnet 1 cidr"
  type = string
  default = "10.0.4.0/24"
}

variable "public_subnet_2_cidr" {
 default = "10.0.5.0/24"
}

variable "public_subnet_3_cidr" {
  description = "value of public subnet 3 cidr"
  type = string
  default = "10.0.6.0/24"
}

variable "ami_type" {
  description = "value of ami type"
  type = string
  default = "AL2_x86_64"
}

variable "instance_types" {
  description = "List of instance types"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "db_table" {
  description = ""
  default = "terraform-lock"

}
variable "bucket_key" {
  description = "bucket key"
  default = "terraform.tfstate"
}

variable "bucket_name" {
  description = "bucket name"
  default = "tophe-terraform-state"
}