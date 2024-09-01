# # Generate SSH key pair
# resource "tls_private_key" "private_key" {
#   algorithm = "RSA"
#   rsa_bits   = 4096
# }

# # Create AWS key pair
# resource "aws_key_pair" "key_pair" {
#   key_name   = "day-5-key-pair"
#   public_key = tls_private_key.private_key.public_key_openssh
# }

# # Output the private key
# output "private_key_pem" {
#   value = tls_private_key.private_key.private_key_pem
#   sensitive = true
# }
resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "kp" {
  key_name   = "myKey"       # Create "myKey" to AWS!!
  public_key = tls_private_key.pk.public_key_openssh

  provisioner "local-exec" { # Create "myKey.pem" to your computer!!
    command = "echo '${tls_private_key.pk.private_key_pem}' > ./myKey.pem"
  }
}