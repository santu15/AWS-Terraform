  resource "aws_eip" "eip" {
    instance = aws_instance.web_server.id

    tags = {
      Name = "test-eip"
    }
  }

