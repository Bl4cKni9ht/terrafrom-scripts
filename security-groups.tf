# Security Group All Traffic Attached To Instnaces In instances.tf
resource "aws_security_group" "demo_sg" {
  name        = "Allow_All_Ports"
  description = "Allow All Ports All Protocols"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    from_port   = 0
    to_port     = 0 
    protocol    = "-1" #allows all incoming traffic from all protocols (https/http, nfs, ssh, smtp)
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
