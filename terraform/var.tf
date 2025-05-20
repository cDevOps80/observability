
variable "servers" {
  default = {
    prometheus = {
      ami           = ""
      instance_type = ""
      tags          =  {
        Name = "prometheus"
      }
    }
  }
}