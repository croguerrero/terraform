resource "aws_instance" "webserver" {
  ami           = "${data.aws_ami.amzn-ami-minimal-hvm-ebs.id}"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.debugging.key_name}"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.debugging.id}"]
    subnet_id = "${aws_subnet.public.id}"
    provisioner "local-exec" {
        type "remote-exec"
        inline_shebang = "/bin/bash"
        commands = ["sudo install -y nginx && sudo service nginx start"]
    }
}

