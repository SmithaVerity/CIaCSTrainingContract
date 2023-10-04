variable "region" {
  description = "AWS region"
  default = "ap-south-1"
}

variable "ami_id" {
  description = "AMI for ubuntu instance"
  type        = string
  default     = "ami-0f5ee92e2d63afc18"  #Ubuntu AMI for "ap-south-1"
}

variable "instance_type" {
  type        = string
  description = "Type of EC2 instance to provision"

  validation {
    condition     = contains(["t2.micro", "t2.small", "t2.medium", "t3.micro"], var.instance_type)
      error_message = "Specified Instance Type is not allowed."
  }
}

variable "instance_name" {
  description = "EC2 instance name"
  default = "Hybrid Test"
}

variable "secgrp_name" {
  description = "EC2 Secutity Group name"
  default = "Hybrid Test SG"
}

variable "ip_address" {
   type        = string
   description = "Web Server IP address"
   
   validation {
      condition = can(regex("^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$",var.ip_address))
      error_message = "Invalid Web Server IP address provided"
   }
}
