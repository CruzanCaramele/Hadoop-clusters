#--------------------------------------------------------------
# Ambari Server (NameNode) Instance 
#--------------------------------------------------------------
resource "aws_instance" "ambari-server" {
    ami                      = "${var.ambari_server_ami}"
    key_name                 = "${var.ssh_key_name}"
    #subnet_id                = "${element(aws_subnet.public-ambari-subnet.id, count.index)}"
    subnet_id                = "${aws_subnet.public-ambari-subnet.id}"
    ebs_optimized            = "${var.ebs_variable}"
    instance_type            = "${var.ambari_server_instance}"
    availability_zone        = "${var.ambari_server_zone}"
    vpc_security_group_ids   = ["${aws_security_group.ambari-server-security.id}"]

    tags    {
        Name                 = "ambari-server"
    }

    root_block_device {
        volume_type          = "${var.volume_type}"
        volume_size          = "${var.volume_size}"
    }
}

#--------------------------------------------------------------
# Data Node Instances 
#--------------------------------------------------------------
# resource "aws_instance" "data-node" {
#     ami               = "${var.ambari_server_ami}"
#     key_name          = "${var.ssh_key_name}"
#     subnet_id         = "${element(aws_subnet.public-ambari-subnet.1.id, count.index)}"
#     ebs_optimized     = "${var.ebs_variable}"
#     instance_type     = "${var.ambari_server_instance}"
#     security_groups   = "${aws_security_group.ambari-node-security}"
#     availability_zone = "${var.ambari_server_zone}"

#     tags    {
#         Name          = "ambari-server"
#     }

#     root_block_device {
#         volume_type   = "${var.volume_type}"
#         volume_size   = "${var.volume_size}"
#     }
# }