resource "google_service_account" "manage-sa" {
  account_id   = "manage-sa"
  display_name = "manage Service Account"
}

resource "google_project_iam_member" "manage-sa-member-1" {
  project = "fair-lane-369013"
  role    = "roles/storage.admin"
  member = "serviceAccount:${google_service_account.manage-sa.email}"

}

resource "google_project_iam_member" "manage-sa-member-2" {
  project = "fair-lane-369013"
  role    = "roles/container.admin"
  member = "serviceAccount:${google_service_account.manage-sa.email}"

}
# resource "google_project_iam_member" "manage-sa-member-3" {
#   project = "fair-layne-369013"
#   role    = "roles/storage.buckets.create"
#   member = "serviceAccount:${google_service_account.manage-sa.email}"

# }