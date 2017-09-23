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

variable "public_subnet_cidr" {
  type        = "string"
  description = "cidr range for public subnet group"
}