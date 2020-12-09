idata_dir  = "/Users/kabu/hashicorp/nomad/datadir/local-single-data"

bind_addr = "127.0.0.1"

client {
  enabled = true
  servers = ["127.0.0.1:4647"]
}

advertise {
  http = "127.0.0.1"
  rpc  = "127.0.0.1"
  serf = "127.0.0.1"
}

ports {
  http = 5641
  rpc  = 5642
  serf = 5643
}