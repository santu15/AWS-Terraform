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

