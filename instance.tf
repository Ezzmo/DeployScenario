resource "aws_instance" "front" {
  # ubuntu 18.04
  ami = "ami-0a63f96e85105c6d3"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.public.id}"
  vpc_security_group_ids = "${aws_security_group.front.id}"
  associate_public_ip_address = true
  key_name = "PracticeKey"
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      host = "${self.public_ip}"
      user = "ubuntu"
      private_key = "${file("~/.ssh/PracticeKey.pem")}"
    }
  }
}

resource "aws_instance" "database" {
  # ubuntu 18.04
  ami = "ami-0a63f96e85105c6d3"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.private.id}"
  vpc_security_group_ids = "${aws_security_group..id}"
  associate_public_ip_address = true
  key_name = "PracticeKey"
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      host = "${self.public_ip}"
      user = "ubuntu"
      private_key = "${file("~/.ssh/PracticeKey.pem")}"
    }
  }
}

