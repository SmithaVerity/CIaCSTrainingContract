variable "password" {
  type        = string
  description = "password"
  validation {
    condition     = length(var.password) >=6 && length(var.password) <= 10
      error_message = "The password variable name must be 6-10 characters in length."
  }
}
