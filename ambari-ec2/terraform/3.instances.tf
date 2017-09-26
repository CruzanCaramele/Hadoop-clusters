#--------------------------------------------------------------
# Ambari Server Instance 
#--------------------------------------------------------------
resource "aws_instance" "ambari-server" {
    ami               = "${var.ambari_server_ami}"
    subnet_id         = "${element(aws_subnet.private_subnet.1.id, count.index)}"
    instance_type     = "${var.ambari_server_instance}"
    availability_zone = "${var.ambari_server_zone}"
}