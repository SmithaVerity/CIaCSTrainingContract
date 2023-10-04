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
  description = "Type of EC2 instance to provision"
  default = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default = "Hybrid Test"
}

variable "secgrp_name" {
  description = "EC2 Secutity Group name"
  default = "Hybrid Test SG"
}

variable "password" {
  type        = string
  description = "password"
  validation {
    condition     = length(var.password) >=6 && length(var.password) <= 10
      error_message = "The password variable name must be 6-10 characters in length."
  }
}

variable "ip_address" {
   type        = string
   description = "Web Server IP address"
   
   validation {
      condition = can(regex("^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$",var.ip_address))
      error_message = "Invalid Web Server IP address provided"
   }
}
