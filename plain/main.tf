resource "aws_instance" "create" {
    ami = "ami-0747bdcabd34c712a"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-04abb6b1453cec471"]
    subnet_id = "subnet-094523098461b615e"
    key_name = "boot" 
    user_data = file("nginx.sh")
    tags = {
        Name = "bootcamp-terraform"
        owner = "chaitanya"
        purpose = "bootcamp session"
    }
}

