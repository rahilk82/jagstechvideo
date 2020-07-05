output "publicip" {
    value = "${aws_instance.beginnerseriesec2.public_ip}"
}
