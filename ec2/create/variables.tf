variable "ami_id" {
  description = "The AMI to use for the instance"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}
