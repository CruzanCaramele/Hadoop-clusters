#--------------------------------------------------------------
# VPC
#--------------------------------------------------------------
resource "aws_vpc" "ambari-vpc" {
    cidr_block                  = "${var.cidr_block}"
    enable_dns_support          = "${var.dns_support}"
    enable_dns_hostnames        = "${var.dns_hostnames}"

    tags    {
        Name                    = "ambari-vpc"
    }

    lifecycle   {
        create_before_destroy   = true
    }

}

#--------------------------------------------------------------
# Internet Gateway
#--------------------------------------------------------------
resource "aws_internet_gateway" "ambari-gateway" {
    vpc_id                      = "${aws_vpc.ambari-vpc.id}"

    tags    {
        Name                    = "ambari-gateway"
    }

    lifecycle   {
        create_before_destroy   = true
    }
}

#--------------------------------------------------------------
# Route Tables
#--------------------------------------------------------------
resource "aws_route_table" "public-ambari-route-table" {
    vpc_id                      = "${aws_vpc.ambari-vpc.id}"

    route   {
        cidr_block              = "${var.public_cidr}"
        gateway_id              = "${aws_internet_gateway.ambari-gateway.id}"
    }

    tags    {
        Name                    = "public-ambari-route-table"
    }

    lifecycle   {
        create_before_destroy   = true
    }
}

#--------------------------------------------------------------
# Network Access Control List
#--------------------------------------------------------------
resource "aws_network_acl" "ambari-acl" {
    vpc_id                      = "${aws_vpc.ambari-vpc.id}"

    egress  {
        action                  = "allow"
        rule_no                 = "80"
        to_port                 = "0"
        from_port               = "0"
        protocol                = "-1"
        cidr_block              = "${var.acl_cidr_block}"
    }

    ingress  {
        action                  = "allow"
        rule_no                 = "80"
        to_port                 = "8080"
        from_port               = "8080"
        protocol                = "tcp"
        cidr_block              = "${var.acl_cidr_block}"
    }

    ingress  {
        action                  = "allow"
        rule_no                 = "90"
        to_port                 = "22"
        from_port               = "22"
        protocol                = "tcp"
        cidr_block              = "${var.acl_cidr_block}"
    }

    ingress  {
        action                  = "allow"
        rule_no                 = "100"
        to_port                 = "50070"
        from_port               = "50070"
        protocol                = "tcp"
        cidr_block              = "${var.acl_cidr_block}"
    }

    tags    {
        Name                    = "ambari-acl"
    }

    lifecycle   {
        create_before_destroy   = true
    }
}

#--------------------------------------------------------------
# Subnets
#--------------------------------------------------------------











































































































