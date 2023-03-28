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
