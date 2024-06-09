# Creating Keypair

# Here we define which algorith to use for generating Key Pair
resource "tls_private_key" "ecdsa-pk" {
    algorithm = "ECDSA"
    ecdsa_curve = "P384"
}

# Creating Public Key and Private Key in this block 
resource "aws_key_pair" "ec2-kp" {
    key_name = "ec2_key_pair"
    public_key = tls_private_key.ecdsa-pk.public_key_openssh
  
}