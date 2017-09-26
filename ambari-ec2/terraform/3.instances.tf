#--------------------------------------------------------------
# Ambari Server Instance 
#--------------------------------------------------------------
resource "aws_instance" "ambari-server" {
    ami               = "${var.ambari_server_ami}"
    instance_type     = "${var.ambari_server_instance}"
    availability_zone = ""
}