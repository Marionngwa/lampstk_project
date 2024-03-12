output "public" {
  value = aws_lightsail_instance.lampstack_practice.public_ip_address
}
output "username" {
  value = aws_lightsail_instance.lampstack_practice.username
}

output "ssh-command" {
  value = "ssh -i ${local_file.ssh_key.filename} ${aws_lightsail_instance.lampstack_practice.username}@${aws_lightsail_instance.lampstack_practice.public_ip_address}"
}