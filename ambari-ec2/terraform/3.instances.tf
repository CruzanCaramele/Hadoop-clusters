#--------------------------------------------------------------
# Ambari Server Instance 
#--------------------------------------------------------------
resource "aws_instance" "ambari-server" {
    ami               = "${var.ambari_server_ami}"
    key_name          = "${var.ssh_key_name}"
    subnet_id         = "${element(aws_subnet.public-ambari-subnet.1.id, count.index)}"
    ebs_optimized     = "${var.ebs_variable}"
    instance_type     = "${var.ambari_server_instance}"
    security_groups   = "${aws_security_group.ambari-server-security}"
    availability_zone = "${var.ambari_server_zone}"

    tags    {
        Name          = "ambari-server"
    }

    root_block_device {
        volume_type   = "${var.volume_type}"
        volume_size   = "${var.volume_size}"
    }
}