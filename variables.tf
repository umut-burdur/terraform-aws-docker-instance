variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_name" { # everyone has own key. Key name will be required
  type = string
}

variable "num_of_instance" {
  type = number
  default = 1 # if you want to open more than one instance, you can change with count.
}

variable "tag" {
  type = string
  default = "Docker-Instance"
}

variable "server-name" {
  type = string
  default = "docker-instance"
}

variable "docker-instance-ports" {
  type = list(number)
  description = "docker-instance-sec-gr-inbound-rules"
  default = [22, 80, 8080] # these ones are default ports. You can change and vary it
}