output "network_id" {
  value = "${openstack_networking_network_v2.network.id}"
}

output "network_name" {
  value = "${openstack_networking_network_v2.network.name}"
}
