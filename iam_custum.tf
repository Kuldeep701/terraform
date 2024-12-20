
/*
# Define a custom role for Storage Admin
resource "google_project_iam_custom_role" "custom_storage_admin" {
  role_id     = "customStorageAdmin"
  title       = "Custom Storage Admin"
  description = "A custom role with storage admin permissions"
  permissions = [
    "storage.buckets.create",
    "storage.buckets.delete",
    "storage.objects.create",
    "storage.objects.delete",
    "storage.objects.get",
    "storage.objects.list",
  ]
  project = "your-gcp-project-id"
}

# Assign the custom Storage Admin role to users
resource "google_project_iam_member" "custom_storage_admin_binding" {
  project = "your-gcp-project-id"
  role    = "projects/your-gcp-project-id/roles/customStorageAdmin"
  member  = "user:someone@google.com"
}


# Define a custom role for Compute Admin
resource "google_project_iam_custom_role" "custom_compute_admin" {
  role_id     = "customComputeAdmin"
  title       = "Custom Compute Admin"
  description = "A custom role with compute admin permissions"
  permissions = [
    "compute.instances.create",
    "compute.instances.delete",
    "compute.instances.start",
    "compute.instances.stop",
    "compute.networks.create",
    "compute.networks.delete",
    
  ]
  project = "your-gcp-project-id"
}

# Define a custom role for Network Admin
resource "google_project_iam_custom_role" "custom_network_admin" {
  role_id     = "customNetworkAdmin"
  title       = "Custom Network Admin"
  description = "A custom role with network admin permissions"
  permissions = [
    "compute.networks.create",
    "compute.networks.delete",
    "compute.subnetworks.create",
    "compute.subnetworks.delete",
    "compute.firewalls.create",
    "compute.firewalls.delete",
  ]
  project = "your-gcp-project-id"
}


# Assign the custom Compute Admin role to users
resource "google_project_iam_member" "custom_compute_admin_binding" {
  project = "your-gcp-project-id"
  role    = "projects/your-gcp-project-id/roles/customComputeAdmin"
  member  = "user:someone@google.com"
}

# Assign the custom Network Admin role to users
resource "google_project_iam_member" "custom_network_admin_binding" {
  project = "your-gcp-project-id"
  role    = "projects/your-gcp-project-id/roles/customNetworkAdmin"
  member  = "user:someone@google.com"
}
*/