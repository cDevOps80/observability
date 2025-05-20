
variable "servers" {
  default = {
    prometheus = {
      ami           = "ami-0b4f379183e5706b9"
      instance_type = "t3.small"
      tags          =  {
        Name = "prometheus"
        monitor = "yes"
      }
    }
    test = {
      ami           = "ami-0b4f379183e5706b9"
      instance_type = "t3.small"
      tags          =  {
        Name = "test"
      }
    }
  }
}