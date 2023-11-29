variable "ami_id" {
  type    = string
  default = "ami-05c13eab67c5d8861"

}
variable "instance_type" {
  type    = string
  default = "t2.micro"

}
variable "alb_names" {
   type = string
   default = "test"
}

variable "security_grp"{
  type = string
  default = "http_access"
}
variable "key_name"{
  type = string
  description = "enter key name"
}

variable "target_group_name"{
    type = string
  
}

variable "port"{
    type = string
    default = 80
}