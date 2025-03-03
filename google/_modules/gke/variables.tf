variable "project" {
  type        = string
  description = "Project the cluster belongs to."
}

variable "metadata_name" {
  type        = string
  description = "Metadata name to use."
}

variable "metadata_fqdn" {
  type        = string
  description = "DNS name of the zone. E.g. `infra.example.com`"
}

variable "metadata_tags" {
  type        = list(string)
  description = "Metadata tags to use."
}

variable "metadata_labels" {
  type        = map(string)
  description = "Metadata labels to use."
}

variable "location" {
  type        = string
  description = "Location accepts a region or zone and starts a regional or zonal cluster respectively. Kubestack is only supported for regional clusters."
}

variable "node_locations" {
  type        = list(string)
  description = "List of zones in the cluster's region to start worker nodes in."
}

variable "min_master_version" {
  type        = string
  description = "Minimum GKE master version."
}

variable "daily_maintenance_window_start_time" {
  type        = string
  description = "Start time of the daily maintenance window."
}

variable "remove_default_node_pool" {
  type        = string
  description = "Whether to remove the default node pool. Leave true, except for upgrading from Kubestack v0.2.0-beta.0."
}

variable "initial_node_count" {
  description = "Initial number of nodes for this node pool."
  type        = string
}

variable "min_node_count" {
  description = "Min number of nodes for this node pool."
  type        = string
}

variable "max_node_count" {
  description = "Max number of nodes for this node pool."
  type        = string
}

variable "extra_oauth_scopes" {
  description = "List of additional oauth scopes for workers."
  type        = list(string)
}

variable "disk_size_gb" {
  description = "The disk size of nodes in this pool."
  type        = string
}

variable "disk_type" {
  description = "The disk type of nodes in this pool."
  type        = string
}

variable "image_type" {
  description = "The image type for nodes in this pool."
  type        = string
  default     = "COS"
}

variable "machine_type" {
  description = "The machine type for nodes in this pool."
  type        = string
}

variable "preemptible" {
  description = "Whether to use preemptible nodes for this node pool."
  type        = string
}

variable "auto_repair" {
  description = "Whether the nodes will be automatically repaired."
  type        = string
}

variable "auto_upgrade" {
  description = "Whether the nodes will be automatically upgraded."
  type        = string
}

variable "disable_default_ingress" {
  type        = bool
  description = "Whether to disable the default ingress."
}

variable "enable_private_nodes" {
  type        = bool
  description = "Whether to enable private nodes"
}

variable "master_cidr_block" {
  type        = string
  description = "The IP range for the master network"
}

variable "cluster_ipv4_cidr_block" {
  type        = string
  description = "The CIDR block used for Kubernetes pods."
}

variable "services_ipv4_cidr_block" {
  type        = string
  description = "The CIDR block used for Kubernetes services."
}

variable "enable_cloud_nat" {
  type        = bool
  description = "Whether to enable cloud nat and allow internet access for private nodes."
}

variable "cloud_nat_endpoint_independent_mapping" {
  type        = bool
  description = "Whether to enable cloud nat endpoint independent mapping"
}

variable "cloud_nat_min_ports_per_vm" {
  type        = number
  description = "The min amount of ports per VM allowed for NAT mapping"
}

variable "cloud_nat_ip_count" {
  type        = number
  description = "The amount of IP addresses to attach to the NAT gateway, changes NAT to use MANUAL_ONLY"
}

variable "disable_workload_identity" {
  description = "Wheter to disable workload identity support."
  type        = bool
}

variable "node_workload_metadata_config" {
  description = "How to expose the node metadata to the workload running on the node."
  type        = string
}

variable "master_authorized_networks_config_cidr_blocks" {
  description = "The list of CIDR blocks of external networks that can access the Kubernetes cluster master through HTTPS. Setting cidr_blocks to an empty list disallows public access."
  type        = list(string)
}

variable "enable_intranode_visibility" {
  description = "Whether to enable GKE intranode visibility."
  type        = bool
}

variable "enable_tpu" {
  description = "Whether to enable GKE cloud TPU support."
  type        = bool
}

variable "cluster_database_encryption_key_name" {
  type        = string
  description = "Cloud KMS key name for enabling cluster database encryption."
}

variable "router_advertise_config" {
  description = "Router custom advertisement configuration, ip_ranges is a map of address ranges and descriptions."
  type = object({
    groups    = list(string)
    ip_ranges = map(string)
    mode      = string
  })
}

variable "router_asn" {
  description = "Router ASN used for auto-created router."
  type        = number
}
