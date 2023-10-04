output "websiteurl" {
  value = format("%s%s", aws_instance.contract.public_ip, "/cafe")
}
