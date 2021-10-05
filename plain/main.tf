resource "aws_instance" "create" {
    ami = "ami-0747bdcabd34c712a"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-09c4aacfd70decc4a"]
    subnet_id = "subnet-0c72c2e920b037b1a"
    key_name = "test-bootcamp" 
    user_data = file("nginx.sh")
    tags = {
        Name = "bootcamp-terraform"
        owner = "chaitanya"
        purpose = "bootcamp session"
    }
}

