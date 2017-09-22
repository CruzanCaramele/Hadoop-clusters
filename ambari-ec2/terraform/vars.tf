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