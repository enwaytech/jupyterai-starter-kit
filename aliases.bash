alias jupyter-ai-build-image='docker build -t jupyter-ai-enway:latest .'
jupyter-ai-run-container() {
    docker run --volume "$(realpath $1)":/app -p 8888:8888 jupyter-ai-enway:latest
}
