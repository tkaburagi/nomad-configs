data_dir  = "/Users/kabu/hashicorp/nomad/datadir/local-cluster-data-2"
bind_addr = "127.0.0.1"

consul {
  address = "127.0.0.1:8500"
}

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

telemetry {
  publish_allocation_metrics = true
  publish_node_metrics       = true
  prometheus_metrics         = true
}