resource "aws_key_pair" "PracticeKey" {
  key_name = "PracticeKey"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
