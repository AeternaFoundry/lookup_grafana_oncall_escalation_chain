data "grafana_oncall_escalation_chain" "oncall_escalation_chain_lookup" {
  for_each = var.oncall_escalation_chain_lookup

  name = each.value.name
}

