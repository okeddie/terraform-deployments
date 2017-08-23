provider "openstack" {
  user_name = "eddietestacct"
  tenant_id = "DDI"
  password = "PASSWORD_NOT_API_KEY"
  auth_url = "https://identity.api.rackspacecloud.com/v2.0/"
  region = "DFW"
}

resource "openstack_compute_instance_v2" "test-swerver" {
  name        = "test-swerver"
  region    = "DFW"
  image_id    = "9d29f10e-4fc2-4556-8d25-532d1784329a"
  flavor_id    = "performance1-4"

  network {
    uuid = "00000000-0000-0000-0000-000000000000"
    name = "public"
  }

  network {
    uuid = "11111111-1111-1111-1111-111111111111"
    name = "private"
  }
}
