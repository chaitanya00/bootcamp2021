module "create_sg" {
  source = "./modules/sg"
 #name   = join("-", [var.project_name, var.env_name, "bootcamp"])
  name   = var.name
  vpc_id = var.vpc_id 
}
module "create_instance" {
  source        = "./modules/ec2"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  VPC_SG        = [module.create_sg.this_security_group_id]
  key_name      = var.key_name
  user_data     = file("nginx.sh")
}

