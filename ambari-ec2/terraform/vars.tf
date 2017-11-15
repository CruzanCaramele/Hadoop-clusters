#--------------------------------------------------------------
# Provider Variables
#--------------------------------------------------------------
variable "aws_region" {
  type        = "string"
  description = "region to deploy resources"
}

variable "aws_access_key" {
  type        = "string"
  description = "aws account access key"
}

variable "aws_secret_key" {
  type        = "string"
  description = "aws account secret key"
}

#--------------------------------------------------------------
# VPC and Networking Variables 
#--------------------------------------------------------------
variable "availability_zones" {
  type        = "string"
  description = "vpc availability zones"
}

variable "vpc_cidr_block" {
  type        = "string"
  description = "vpc cidr range"
}

variable "dns_support" {
  type        = "string"
  description = "support for dns in vpc"
}

variable "public_cidr" {
  type        = "string"
  description = "route to internet"
}

variable "dns_hostnames" {
  type        = "string"
  description = "support for dns hostnames in vpc"
}

variable "acl_cidr_block" {
  type        = "string"
  description = "cidr block for acl"
}

variable "public_subnet_cidrs" {
  type        = "string"
  description = "cidr range for public subnet group"
}

variable "ssh_key_name" {
  type        = "string"
  description = "key pair name"
}

#--------------------------------------------------------------
# Instance Variables
#--------------------------------------------------------------
variable "ambari_server_ami" {
  type        = "string"
  description = "pre-baked ami from packer build"
}

variable "ambari_server_instance" {
  type        = "string"
  description = "server instance type"
}

variable "ambari_server_zone" {
  type        = "string"
  description = "az to launch the ambari server in"
}

variable "ebs_variable" {
  type        = "string"
  description = "ebs optimized"
}

variable "volume_type" {
  type        = "string"
  description = "volume type"
}

variable "volume_size" {
  type        = "string"
  description = "volume size"
}