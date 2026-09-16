// Learner task: re-expose useful module outputs from this root layer.

output "network_self_link" {
  description = "VPC network self link (output once you wire module outputs)."
  value       = module.network.network_self_link
}

output "subnet_self_link" {
  description = "Subnet self link (output once you wire module outputs)."
  value       = module.network.subnet_self_link
}
