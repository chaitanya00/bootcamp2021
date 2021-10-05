module "create_instance" {
  source = "./modules/ec2"
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  key_name = var.key_name
  VPC_SG = var.VPC_SG
  user_data = file("nginx.sh")
}

