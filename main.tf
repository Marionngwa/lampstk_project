# Create a new GitLab Lightsail Instance
resource "aws_lightsail_instance" "lampstack_practice" {
  name              = "lamp-server"
  availability_zone = "us-east-1a"
  blueprint_id      = "centos_7_2009_01"
  bundle_id         = "medium_1_0"
  key_pair_name     = "lampstack_key"
  tags = {
    emv = "test"
  }
}