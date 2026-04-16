##### MONGOBD SG RULES #####

# MONGODB accepting traffic from Bastion

resource "aws_security_group_rule" "mongodb_bastion" {

   type = "ingress"
   security_group_id = local.mongodb_sg_id 
   source_security_group_id = local.bastion_sg_id
   from_port         = 22
   protocol       = "tcp"
   to_port           = 22
}

# MONGODB accepting traffic from CATALOGUE

resource "aws_security_group_rule" "mongodb_catalogue" {

   type = "ingress"
   security_group_id = local.mongodb_sg_id 
   source_security_group_id = local.catalogue_sg_id
   from_port         = 27017
   protocol       = "tcp"
   to_port           = 27017
}

# MONGODB accepting traffic from USER

resource "aws_security_group_rule" "mongodb_user" {

   type = "ingress"
   security_group_id = local.mongodb_sg_id 
   source_security_group_id = local.user_sg_id
   from_port         = 27017
   protocol       = "tcp"
   to_port           = 27017
}


##### REDIS SG RULES #####

# REDIS accepting traffic from Bastion

resource "aws_security_group_rule" "redis_bastion" {

   type = "ingress"
   security_group_id = local.redis_sg_id 
   source_security_group_id = local.bastion_sg_id
   from_port         = 22
   protocol       = "tcp"
   to_port           = 22
}

# REDIS accepting traffic from USER

resource "aws_security_group_rule" "redis_user" {

   type = "ingress"
   security_group_id = local.redis_sg_id 
   source_security_group_id = local.user_sg_id
   from_port         = 6379
   protocol       = "tcp"
   to_port           = 6379
}

# REDIS accepting traffic from CART

resource "aws_security_group_rule" "redis_cart" {

   type = "ingress"
   security_group_id = local.redis_sg_id 
   source_security_group_id = local.cart_sg_id
   from_port         = 6379
   protocol       = "tcp"
   to_port           = 6379
}

##### RABBITMQ SG RULES #####

# RABBITMQ accepting traffic from Bastion

resource "aws_security_group_rule" "rabbitmq_bastion" {

   type = "ingress"
   security_group_id = local.rabbitmq_sg_id 
   source_security_group_id = local.bastion_sg_id
   from_port         = 22
   protocol       = "tcp"
   to_port           = 22
}

# RABBITMQ accepting traffic from PAYMENT

resource "aws_security_group_rule" "rabbitmq_payment" {

   type = "ingress"
   security_group_id = local.rabbitmq_sg_id 
   source_security_group_id = local.payment_sg_id
   from_port         = 5672
   protocol       = "tcp"
   to_port           = 5672
}

##### MYSQL SG RULES #####

# MYSQL accepting traffic from Bastion

resource "aws_security_group_rule" "mysql_bastion" {

   type = "ingress"
   security_group_id = local.mysql_sg_id 
   source_security_group_id = local.bastion_sg_id
   from_port         = 22
   protocol       = "tcp"
   to_port           = 22
}

# MYSQL accepting traffic from SHIPPING

resource "aws_security_group_rule" "mysql_shipping" {

   type = "ingress"
   security_group_id = local.mysql_sg_id 
   source_security_group_id = local.shipping_sg_id
   from_port         = 3306
   protocol       = "tcp"
   to_port           = 3306
}


##### CATALOGUE SG RULES #####

# CATALOGUE accepting traffic from Bastion

resource "aws_security_group_rule" "catalogue_bastion" {

   type = "ingress"
   security_group_id = local.catalogue_sg_id 
   source_security_group_id = local.bastion_sg_id
   from_port         = 22
   protocol       = "tcp"
   to_port           = 22
}

# CATALOGUE accepting traffic from BACKEND_ALB

resource "aws_security_group_rule" "catalogue_backend_alb" {

   type = "ingress"
   security_group_id = local.catalogue_sg_id 
   source_security_group_id = local.backend_alb_sg_id
   from_port         = 8080
   protocol       = "tcp"
   to_port           = 8080
}


##### USER SG RULES #####

# USER accepting traffic from Bastion

resource "aws_security_group_rule" "user_bastion" {

   type = "ingress"
   security_group_id = local.user_sg_id 
   source_security_group_id = local.bastion_sg_id
   from_port         = 22
   protocol       = "tcp"
   to_port           = 22
}

# USER accepting traffic from BACKEND_ALB

resource "aws_security_group_rule" "user_backend_alb" {

   type = "ingress"
   security_group_id = local.user_sg_id 
   source_security_group_id = local.backend_alb_sg_id
   from_port         = 8080
   protocol       = "tcp"
   to_port           = 8080
}


##### CART SG RULES #####

# CART accepting traffic from Bastion

resource "aws_security_group_rule" "cart_bastion" {

   type = "ingress"
   security_group_id = local.cart_sg_id 
   source_security_group_id = local.bastion_sg_id
   from_port         = 22
   protocol       = "tcp"
   to_port           = 22
}

# CART accepting traffic from BACKEND_ALB

resource "aws_security_group_rule" "cart_backend_alb" {

   type = "ingress"
   security_group_id = local.cart_sg_id 
   source_security_group_id = local.backend_alb_sg_id
   from_port         = 8080
   protocol       = "tcp"
   to_port           = 8080
}




##### SHIPPING SG RULES #####

# SHIPPING accepting traffic from Bastion

resource "aws_security_group_rule" "shipping_bastion" {

   type = "ingress"
   security_group_id = local.shipping_sg_id 
   source_security_group_id = local.bastion_sg_id
   from_port         = 22
   protocol       = "tcp"
   to_port           = 22
}

# SHIPPING accepting traffic from BACKEND_ALB

resource "aws_security_group_rule" "shipping_backend_alb" {

   type = "ingress"
   security_group_id = local.shipping_sg_id 
   source_security_group_id = local.backend_alb_sg_id
   from_port         = 8080
   protocol       = "tcp"
   to_port           = 8080
}

##### PAYMENT SG RULES #####

# PAYMENT accepting traffic from Bastion

resource "aws_security_group_rule" "payment_bastion" {

   type = "ingress"
   security_group_id = local.payment_sg_id 
   source_security_group_id = local.bastion_sg_id
   from_port         = 22
   protocol       = "tcp"
   to_port           = 22
}

# PAYMENT accepting traffic from BACKEND_ALB

resource "aws_security_group_rule" "payment_backend_alb" {

   type = "ingress"
   security_group_id = local.payment_sg_id 
   source_security_group_id = local.backend_alb_sg_id
   from_port         = 8080
   protocol       = "tcp"
   to_port           = 8080
}

##### BACKEND SG RULES #####

# Backend ALB accepting traffic from Bastion

resource "aws_security_group_rule" "backend_alb_bastion" {

   type = "ingress"
   security_group_id = local.backend_alb_sg_id 
   source_security_group_id = local.bastion_sg_id
   from_port         = 80
   protocol       = "tcp"
   to_port           = 80
}

# Backend ALB accepting traffic from FRONTEND

resource "aws_security_group_rule" "backend_alb_frontend" {

   type = "ingress"
   security_group_id = local.backend_alb_sg_id 
   source_security_group_id = local.frontend_sg_id
   from_port         = 80
   protocol       = "tcp"
   to_port           = 80
}

# Backend ALB accepting traffic from CART

resource "aws_security_group_rule" "backend_alb_cart" {

   type = "ingress"
   security_group_id = local.backend_alb_sg_id 
   source_security_group_id = local.cart_sg_id
   from_port         = 80
   protocol       = "tcp"
   to_port           = 80
}

# Backend ALB accepting traffic from SHIPPING

resource "aws_security_group_rule" "backend_alb_shipping" {

   type = "ingress"
   security_group_id = local.backend_alb_sg_id 
   source_security_group_id = local.shipping_sg_id
   from_port         = 80
   protocol       = "tcp"
   to_port           = 80
}

# Backend ALB accepting traffic from FRONTEND

resource "aws_security_group_rule" "backend_alb_payment" {

   type = "ingress"
   security_group_id = local.backend_alb_sg_id 
   source_security_group_id = local.payment_sg_id
   from_port         = 80
   protocol       = "tcp"
   to_port           = 80
}

##### Frontend ALB SG RUles #####

# FRONTEND accepting traffic from Bastion

resource "aws_security_group_rule" "frontend_bastion" {

   type = "ingress"
   security_group_id = local.frontend_sg_id 
   source_security_group_id = local.bastion_sg_id
   from_port         = 22
   protocol       = "tcp"
   to_port           = 22
}

# FRONTEND accepting traffic from FRONTEND ALB
resource "aws_security_group_rule" "frontend_frontend_alb" {
  type              = "ingress"
  security_group_id = local.frontend_sg_id
  source_security_group_id = local.frontend_alb_sg_id
  from_port         = 80
  protocol          = "tcp"
  to_port           = 80
}

##### FRONTEND ALB SG RULES #####
# FRONTEND ALB accepting traffic from PUBLIC
resource "aws_security_group_rule" "frontend_alb_public" {
  type              = "ingress"
  security_group_id = local.frontend_alb_sg_id
  cidr_blocks = ["0.0.0.0/0"]
  from_port         = 443
  protocol          = "tcp"
  to_port           = 443
}

##### BASTION SG RULES #####

# Bastion accepting traffic from All

resource "aws_security_group_rule" "bastion_laptop" {

   type = "ingress"
   security_group_id = local.bastion_sg_id 
   cidr_blocks = ["0.0.0.0/0"]
   from_port         = 22
   protocol       = "tcp"
   to_port           = 22
}


##### OPEN_VPN SG RULES #####

# VPN accepting traffic from the public
resource "aws_security_group_rule" "open_vpn_public" {

   type = "ingress"
   security_group_id = local.open_vpn_sg_id 
   cidr_blocks = ["0.0.0.0/0"]
   from_port         = 22
   protocol       = "tcp"
   to_port           = 22
}

# VPN accepting traffic on the port 943
resource "aws_security_group_rule" "open_vpn_943" {

   type = "ingress"
   security_group_id = local.open_vpn_sg_id 
   cidr_blocks = ["0.0.0.0/0"]
   from_port         = 943
   protocol       = "tcp"
   to_port           = 943
}

# VPN accepting traffic on the port 443
resource "aws_security_group_rule" "open_vpn_443" {

   type = "ingress"
   security_group_id = local.open_vpn_sg_id 
   cidr_blocks = ["0.0.0.0/0"]
   from_port         = 443
   protocol       = "tcp"
   to_port           = 443
}

# VPN accepting traffic on the port 1194
resource "aws_security_group_rule" "open_vpn_1194" {

   type = "ingress"
   security_group_id = local.open_vpn_sg_id 
   cidr_blocks = ["0.0.0.0/0"]
   from_port         = 1194
   protocol       = "tcp"
   to_port           = 1194
}

# # VPN accepting traffic on the port 1194
# resource "aws_security_group_rule" "open_vpn_1194" {

#    type = "ingress"
#    security_group_id = local.open_vpn_sg_id 
#    cidr_blocks = ["0.0.0.0/0"]
#    from_port         = 1194
#    protocol       = "tcp"
#    to_port           = 1194
# }

# VPN accepting traffic on the port 1194
resource "aws_security_group_rule" "catalogue_vpn" {

   type = "ingress"
   security_group_id = local.catalogue_sg_id
   source_security_group_id = local.open_vpn_sg_id 
   from_port         = 22
   protocol       = "tcp"
   to_port           = 22
}
/* # This is the mistake we did, cart can't access catalogue directly, it should be through backend ALB
# # CATALOGUE accepting traffic from CART

# resource "aws_security_group_rule" "catalogue_cart" {

#    type = "ingress"
#    security_group_id = local.catalogue_sg_id 
#    source_security_group_id = local.cart_sg_id
#    from_port         = 8080
#    protocol       = "tcp"
#    to_port           = 8080
# }

# USER accepting traffic from PAYMENT

resource "aws_security_group_rule" "user_payment" {

   type = "ingress"
   security_group_id = local.user_sg_id 
   source_security_group_id = local.payment_sg_id
   from_port         = 8080
   protocol       = "tcp"
   to_port           = 8080
}

# CART accepting traffic from SHIPPING

resource "aws_security_group_rule" "cart_shipping" {

   type = "ingress"
   security_group_id = local.cart_sg_id 
   source_security_group_id = local.shipping_sg_id
   from_port         = 8080
   protocol       = "tcp"
   to_port           = 8080
}

# CART accepting traffic from PAYMENT

resource "aws_security_group_rule" "cart_payment" {

   type = "ingress"
   security_group_id = local.cart_sg_id 
   source_security_group_id = local.payment_sg_id
   from_port         = 8080
   protocol       = "tcp"
   to_port           = 8080
} */
