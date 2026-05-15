variable "ami_id" {
  type        = string
  description = "The AMI ID to use for the EC2 instances in the autoscaling group."
}

variable "app_port" {
  type        = number
  description = "Port the application listens on"
  default     = 80
}

variable "autoscale_group_min_max" {
  type = object({
    min = number
    max = number
  })

  description = "The minimum and maximum size for the autoscale group."
}

variable "autoscale_group_size" {
  type        = number
  description = "Default size of autoscale group."
}

variable "environment" {
  type        = string
  description = "(Required) Environment of all resources"
}

variable "instance_tags" {
  type = map(string)
  description = "A map of tags to apply to the EC2 instances in the autoscaling group."
  default = {}
}

variable "instance_type" {
  type        = string
  description = "Instance type for Autoscale group"
  default     = "t3.micro"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix to use for all resources in this module."
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "List of public subnet IDs to deploy resources in."
}

variable "user_data_content" {
  type        = string
  description = "The content of the user data script to run on EC2 instance startup."
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC where resources will be deployed."
}



