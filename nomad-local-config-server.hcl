data_dir  = "/Users/kabu/hashicorp/nomad/datadir/local-single-data"

bind_addr = "127.0.0.1"

server {
  enabled          = true
  bootstrap_expect = 1
}

advertise {
  http = "127.0.0.1"
  rpc  = "127.0.0.1"
  serf = "127.0.0.1"
}