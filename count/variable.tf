variable "instances" {
    default = ["mongodb", "redis", "sql", "rabitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
  
}

variable "zone_id" {
  default = ""
}

variable "domain_name" {
  default = "slvcs.online"
}