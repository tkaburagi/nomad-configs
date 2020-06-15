data_dir  = "/Users/kabu/hashicorp/nomad/datadir/local-consul-single-data"

bind_addr = "127.0.0.1"

consul {
  address = "127.0.0.1:8500"
}

server {
  enabled          = true
  bootstrap_expect = 1
}

advertise {
  http = "127.0.0.1"
  rpc  = "127.0.0.1"
  serf = "127.0.0.1"
}