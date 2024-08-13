# terraform {
#   required_providers {
#     kubernetes = {
#       source  = "hashicorp/kubernetes"
#       version = ">= 2.16.1"
#     }
#   }
# }

# data "terraform_remote_state" "eks" {
#   backend = "local"

#   config = {
#     path = "../learn-terraform-provision-eks-cluster/terraform.tfstate"
#   }
# }

# # Retrieve EKS cluster information
# provider "aws" {
#   region = data.terraform_remote_state.eks.outputs.region
# }

# data "aws_eks_cluster" "cluster" {
#   name = data.terraform_remote_state.eks.outputs.cluster_name
# }

