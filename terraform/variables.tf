variable "google_region" {
  description = "Google Region"
  type        = string
}

variable "google_zone" {
  description = "Google Zone"
  type        = string
}

variable "google_project_number" {
  description = "Google Project Number"
  type        = string
}

variable "google_instance_type" {
  description = "Google Instance Type"
  type        = string
}

variable "google_instance_image" {
  description = "Google Instance Image"
  type        = string
}

variable "google_network" {
  description = "Google Network Name"
  type        = string
}

variable "ssh_key_pub" {
  description = "Path Public SSH Key for Ansible User"
  type        = string
}
