resource "null_resource" "docker_build" {

triggers = {
always_run = timestamp()

}

provisioner "local-exec" {
working_dir = path.module
command     = "docker build -t gcr.io/fair-lane-369013/app ./app && docker push gcr.io/fair-lane-369013/app"
}
}


