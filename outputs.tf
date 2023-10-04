output "websiteurl" {
  value = format("%s%s", aws_instance.ciacs.public_ip, "/cafe")
}
