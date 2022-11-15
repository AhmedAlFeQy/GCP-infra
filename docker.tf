resource "null_resource" "docker_build" {

triggers = {
always_run = timestamp()

}

provisioner "local-exec" {
working_dir = path.module
command     = "docker build -t gcr.io/feki-368302/app /home/aalfeqy/GCP/app && docker push gcr.io/feki-368302/app"
}
}


