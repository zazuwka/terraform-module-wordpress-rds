# terraform-wordpress-rds

Create a configuration to launch EC2 instance with wordpress and connect RDS database

## Usage:

```hcl
module "ec2" {
  source  = "zazuwka/wordpress-rds/module"
  version = "0.0.1"
  region         = "us-east-2"
  instance_type  = "t2.micro"
  instance_class = "db.t2.micro"
  root_volume_size = 22
  key_name = "yo-key"
  key_file = "~/.ssh/id_rsa.pub"
  private_key = "~/.ssh/id_rsa"
  vpc_main_cidr_block     = "10.0.0.0/16"
  vpc_public1_cidr_block  = "10.0.1.0/24"
  vpc_public2_cidr_block  = "10.0.2.0/24"
  vpc_public3_cidr_block  = "10.0.3.0/24"
  vpc_private1_cidr_block = "10.0.101.0/24"
  vpc_private2_cidr_block = "10.0.102.0/24"
  vpc_private3_cidr_block = "10.0.103.0/24"
  default_cidr_block      = "0.0.0.0/0"
  database_name = "kaizen_group2" 
  database_user = "group2_user"   
  database_password = "Kaizen2023"
  
}
```