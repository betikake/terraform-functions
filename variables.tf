variable "fun_location" {
  default = "eu"
}

variable "fun_project_id" {
  description = "The ID of the Google Cloud project."
  type        = string
}

variable "bucket_prefix_length" {
  default = 10
}

variable "max_instance" {
  default = 1
}

variable "timeout" {
  default = 60
}

variable "function_name" {}

variable "description" {
  type = string
}

variable "min_instance" {
  default = 1
}

variable "run_time" {
  default = "go119"
  type    = string
}

variable "available_memory" {
  default = "128Mi"
  type    = string
}

variable "entry_point" {
  type = string
}

variable "region" {
  description = "The region where the Cloud Function will be deployed."
  type        = string
}

variable "service_account" {
  type = object({
    account_id   = string
    display_name = string
  })
}

variable "vpc_connector" {
  description = "The name of the VPC connector to associate with the Cloud Function."
  type        = string
}

variable "source_dir" {
  description = "The directory containing the function source code."
  type        = string
}

variable "environment_variables" {
  type = map(object({
    Key   = string
    Value = string
  }))
  default = {}
}