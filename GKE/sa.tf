resource "google_service_account" "gke-sa" {
  account_id   = "gke-sa"
  display_name = "GKE Service Account"
}

resource "google_project_iam_member" "gke-sa-member-1" {
  project = "feki-368302"
  role    = "roles/storage.admin"
  member = "serviceAccount:${google_service_account.gke-sa.email}"

}
resource "google_project_iam_member" "gke-sa-member-2" {
  project = "feki-368302"
  role    = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.gke-sa.email}"

}
