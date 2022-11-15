resource "google_service_account" "manage-sa" {
  account_id   = "manage-sa"
  display_name = "manage Service Account"
}

resource "google_project_iam_member" "manage-sa-member-1" {
  project = "feki-368302"
  role    = "roles/storage.admin"
  member = "serviceAccount:${google_service_account.manage-sa.email}"

}

resource "google_project_iam_member" "manage-sa-member-2" {
  project = "feki-368302"
  role    = "roles/container.admin"
  member = "serviceAccount:${google_service_account.manage-sa.email}"

}