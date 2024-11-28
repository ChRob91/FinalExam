resource "aws_instance" "jenkins" {
  ami           = "ami-0440d3b780d96b29d" # Amazon Linux 2 AMI (HVM)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main_a.id
  security_groups = [aws_security_group.web_sg.id]
  key_name      = aws_key_pair.generated_key.key_name
  tags = {
    Name = "Jenkins"
  }
}

resource "aws_instance" "testing" {
  ami           = "ami-0440d3b780d96b29d" # Amazon Linux 2 AMI (HVM)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main_b.id
  security_groups = [aws_security_group.web_sg.id]
  key_name      = aws_key_pair.generated_key.key_name
  tags = {
    Name = "Testing"
  }
}

resource "aws_instance" "staging" {
  ami           = "ami-0440d3b780d96b29d" # Amazon Linux 2 AMI (HVM)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main_c.id
  security_groups = [aws_security_group.web_sg.id]
  key_name      = aws_key_pair.generated_key.key_name
  tags = {
    Name = "Staging"
  }
}

resource "aws_instance" "production1" {
  ami           = "ami-0440d3b780d96b29d" # Amazon Linux 2 AMI (HVM)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main_d.id
  security_groups = [aws_security_group.web_sg.id]
  key_name      = aws_key_pair.generated_key.key_name
  tags = {
    Name = "Production1"
  }
}

resource "aws_instance" "production2" {
  ami           = "ami-0440d3b780d96b29d" # Amazon Linux 2 AMI (HVM)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main_e.id
  security_groups = [aws_security_group.web_sg.id]
  key_name      = aws_key_pair.generated_key.key_name
  tags = {
    Name = "Production2"
  }
}
