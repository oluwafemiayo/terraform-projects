# create application load balancer
# terraform aws create application load balancer
resource "aws_lb" "application_load_balancer" {
  name               = "dev alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_security_group]
  subnets            = [aws_subnet.public_subnet_az1.id, aws_subnet.public_subnet_az2.id]

  enable_deletion_protection = false

  tags   = {
    Name = "dev alb"
  }
}

# create target group
# terraform aws create target group
resource "aws_lb_target_group" "alb_target_group" {
  name        = 
  target_type = 
  port        = 
  protocol    = 
  vpc_id      = 

  health_check {
    healthy_threshold   = 
    interval            = 
    matcher             = 
    path                = 
    port                = 
    protocol            = 
    timeout             = 
    unhealthy_threshold = 
  }
}

# create a listener on port 80 with redirect action
# terraform aws create listener
resource "aws_lb_listener" "alb_http_listener" {
  load_balancer_arn = aws_lb.application_load_balancer.arn
  port              = 80
  protocol          = "http"

  default_action {
    type = 

    redirect {
      host        = 
      path        = 
      port        = 
      protocol    = 
      status_code = 
    }
  }
}

# create a listener on port 443 with forward action
# terraform aws create listener
resource "aws_lb_listener" "alb_https_listener" {
  load_balancer_arn  = aws_lb.application_load_balancer.arn
  port               = 
  protocol           = 
  ssl_policy         = "ELBSecurityPolicy-2016-08"
  certificate_arn    = 

  default_action {
    type             = 
    target_group_arn = 
  }
}