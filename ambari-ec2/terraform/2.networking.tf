#--------------------------------------------------------------
# VPC
#--------------------------------------------------------------
resource "aws_vpc" "ambari-vpc" {
    cidr_block                  = "{var.cidr_block}"
    enable_dns_support          = "{var.dns_support}"
    enable_dns_hostnames        = "{var.dns_hostnames}"

    tags    {
        Name                    = "ambari-vpc"
    }

    lifecycle   {
        create_before_destroy   = "{var.lifecycle}"
    }

}

#--------------------------------------------------------------
# Internet Gateway
#--------------------------------------------------------------
resource "aws_internet_gateway" "ambari-gateway" {

}
