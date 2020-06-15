data_dir  = "/Users/kabu/hashicorp/nomad/datadir/consul-vault-local-cluster-data-1"

bind_addr = "127.0.0.1"

client {
  enabled = true
  servers = ["127.0.0.1:4647"]
  host_volume "mysql-vol" {
    path = "/Users/kabu/hashicorp/nomad/mysql-data"
    read_only = false
  }
  meta {
    "Name" = "client-2"
  }
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

ports {
  http = 5644
  rpc  = 5645
  serf = 5646
}

plugin "raw_exec" {
  config {
    enabled = true
  }
}