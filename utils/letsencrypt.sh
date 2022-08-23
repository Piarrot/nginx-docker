source "./utils/docker.sh"

function generate_cert {
    docker_run "certbot certonly -n --standalone -d $1 --agree-tos --email $2"
}

function remove_cert {
    docker_run "certbot delete --cert-name $1"
}