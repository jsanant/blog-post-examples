log_level = "info"

template {
  source = "/home/vagrant/ingress-gateway.conf.ctmpl"

  destination = "/etc/nginx/conf.d/ingress-gateway.conf"

  command = ["service nginx reload"]

  command_timeout = "60s"
}