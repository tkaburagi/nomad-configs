data_dir  = "/Users/kabu/hashicorp/nomad/datadir/consul-vault-local-cluster-data-server"

bind_addr = "127.0.0.1"

server {
  enabled          = true
  bootstrap_expect = 1
}

vault {
  enabled = true
  address = "http://127.0.0.1:8200"
}

consul {
  address = "127.0.0.1:8500"
}

advertise {
  http = "127.0.0.1"
  rpc  = "127.0.0.1"
  serf = "127.0.0.1"
}