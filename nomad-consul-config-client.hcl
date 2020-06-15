data_dir  = "/Users/kabu/hashicorp/nomad/datadir/local-consul-single-data"

bind_addr = "127.0.0.1"

consul {
  address = "127.0.0.1:8500"
}

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