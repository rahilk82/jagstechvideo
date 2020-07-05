output "publicip" {
    value = "${aws_instance.jenkins.public_ip}"
}
