#### inginious-base container

    docker run \
      --rm -it \
      -v "$PWD"/configuration.example.yaml:/inginious/configuration.yml \
      -p 172.10.0.2:80:8080 \
    inginious-base:latest
