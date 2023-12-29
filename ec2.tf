  resource "aws_instance" "example" {
    ami           = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    key_name      = "Terraform-Key"
    subnet_id     = aws_subnet.public.id

    associate_public_ip_address = true
    security_groups = [
      aws_security_group.web_server.id
    ]
     user_data = <<-EOF
       #!/bin/bash
       sudo apt-get update -y
       sudo apt-get install apache2 -y
       sudo systemctl start apache2
       sudo systemctl enable apache2
       sudo systemctl restart apache2
       sudo chmod 766 /var/www/html/index.html
       sudo echo "<html><body><h1>Welcome to my website.</h1></body></html>" >/var/www/html/index.html    
    EOF
    tags = {
      Name = "Terraform-Infra"
    }
  }

