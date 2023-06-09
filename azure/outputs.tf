#for deffinition resource_group_id
output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

#for deffinition resource_group_name
output "resource_group_name" {
  value = azurerm_resource_group.default.name
}

#for deffinition kubernetes_cluster_name
output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.default.name
}
