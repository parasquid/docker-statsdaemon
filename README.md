docker-statsdaemon
==================

Docker container for Vimeo's StatsDaemon

Creates a docker image to run Vimeo's StatsDaemon application.


Install the upstart script in /etc/init

NOTE: make sure that docker is run with " -r= false " so it doesn't restart previously running containers

    sudo sh -c "echo 'DOCKER_OPTS=\"-r=false\"' >> /etc/default/docker"

Then create the container (and optionally run it)

    docker build -t docker-statsdaemon https://github.com/parasquid/docker-statsdaemon.git
    docker run -d -p 8126:8126 docker-statsdaemon
