variable "access_key" {
  description = "AWS access key"
}

variable "secret_key" {
  description = "AWS secret access key"
}

variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

/* Ubuntu bionic 18.04 AMIs by region */
variable "amis" {
  description = "Base AMI to launch the instances with"
  default = {
    us-west-2 = "ami-0a7d051a1c4b54f65"
    us-west-1 = "ami-0f42d8c4eb586ccf7"
    us-east-2 = "ami-059d836af932792c3"
    us-east-1 = "ami-00a208c7cdba991ea"
  }
}
