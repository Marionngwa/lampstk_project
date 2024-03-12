# Generates a secure private key and encodes it as PEM
resource "tls_private_key" "lampstack" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
# Create the Key Pair
resource "aws_lightsail_key_pair" "lightsail_key" {
  name   = "lampstack_key"
  public_key = tls_private_key.lampstack.public_key_openssh
}
# Save file
resource "local_file" "ssh_key" {
  filename = "lamp.pem"
  content  = tls_private_key.lampstack.private_key_pem
}