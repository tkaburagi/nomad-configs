data_dir  = "/Users/kabu/hashicorp/nomad/datadir/local-cluster-data-server"

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

telemetry {
  publish_allocation_metrics = true
  publish_node_metrics       = true
  prometheus_metrics         = true
}