output "oncall_escalation_chain_lookup_id" {
  description = "Map of id values across all oncall_escalation_chain_lookup, keyed the same as var.oncall_escalation_chain_lookup except keys with no id are omitted"
  value       = { for k, v in data.grafana_oncall_escalation_chain.oncall_escalation_chain_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "oncall_escalation_chain_lookup_name" {
  description = "Map of name values across all oncall_escalation_chain_lookup, keyed the same as var.oncall_escalation_chain_lookup except keys with no name are omitted"
  value       = { for k, v in data.grafana_oncall_escalation_chain.oncall_escalation_chain_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}

