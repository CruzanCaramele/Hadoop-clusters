#--------------------------------------------------------------
# Ambari Server Instance 
#--------------------------------------------------------------
resource "aws_instance" "ambari-server" {
    ami               = "${var.ambari_server_ami}"
    subnet_id         = "${element(aws_subnet.public-ambari-subnet.1.id, count.index)}"
    instance_type     = "${var.ambari_server_instance}"
    security_groups   = "${aws_security_group.ambari-server-security}"
    availability_zone = "${var.ambari_server_zone}"
}