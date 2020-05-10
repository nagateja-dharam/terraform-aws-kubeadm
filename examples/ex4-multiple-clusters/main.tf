provider "aws" {
  region = var.region
}

module "cluster_1" {
  source           = "weibeld/kubeadm/aws"
  version          = "~> 0.1"
  private_key_file = var.private_key_file
  public_key_file  = var.public_key_file
  cluster_name     = var.cluster_names[0]
}

module "cluster_2" {
  source           = "weibeld/kubeadm/aws"
  version          = "~> 0.1"
  private_key_file = var.private_key_file
  public_key_file  = var.public_key_file
  cluster_name     = var.cluster_names[1]
}

module "cluster_3" {
  source           = "weibeld/kubeadm/aws"
  version          = "~> 0.1"
  private_key_file = var.private_key_file
  public_key_file  = var.public_key_file
  cluster_name     = var.cluster_names[2]
}
