ui=true

storage "inmem" {}

listener "tcp" {
   address = "1.2.3.7:80"
   tls_disable = 1
}
