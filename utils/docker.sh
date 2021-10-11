function restart_container {
    echo "Restarting container"
    docker-compose up -d --build --force-recreate 
    echo "Container restarted"
}

function stop_container {
    echo "Stoping container"
    # docker-compose stop
    echo "Container restarted"
}

function docker_run {
    docker-compose run -u 0 webhosting "$*"
}