resource "aws_instance" "create" {
    ami                    = var.ami
    instance_type          = var.instance_type
    vpc_security_group_ids = var.VPC_SG
    subnet_id              = var.subnet_id
    key_name               = var.key_name 
    user_data              = var.user_data
    tags = {
        Name = "bootcamp-terraform"
        owner = "chaitanya"
        purpose = "bootcamp session"
    }
}

