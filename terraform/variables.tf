variable "region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "Amazon Linux 2023 AMI for ap-south-1"
  default     = "ami-0f58b397bc5c1f2e8"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "dockerhub_username" {
  description = "Your DockerHub username"
  default     = "sowmiyathirugnanam"
}