output "dsql_cluster_peerings_clusters" {
  description = "Map of clusters values across all dsql_cluster_peerings, keyed the same as var.dsql_cluster_peerings"
  value       = { for k, v in aws_dsql_cluster_peering.dsql_cluster_peerings : k => v.clusters if v.clusters != null && length(v.clusters) > 0 }
}
output "dsql_cluster_peerings_identifier" {
  description = "Map of identifier values across all dsql_cluster_peerings, keyed the same as var.dsql_cluster_peerings"
  value       = { for k, v in aws_dsql_cluster_peering.dsql_cluster_peerings : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}
output "dsql_cluster_peerings_region" {
  description = "Map of region values across all dsql_cluster_peerings, keyed the same as var.dsql_cluster_peerings"
  value       = { for k, v in aws_dsql_cluster_peering.dsql_cluster_peerings : k => v.region if v.region != null && length(v.region) > 0 }
}
output "dsql_cluster_peerings_witness_region" {
  description = "Map of witness_region values across all dsql_cluster_peerings, keyed the same as var.dsql_cluster_peerings"
  value       = { for k, v in aws_dsql_cluster_peering.dsql_cluster_peerings : k => v.witness_region if v.witness_region != null && length(v.witness_region) > 0 }
}

