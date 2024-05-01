
# PythonDockerImages

[![Docker Pulls](https://badgen.net/docker/pulls/bral1488/python_docker_builder?icon=docker&label=pulls)](https://hub.docker.com/repository/docker/bral1488/python_docker_builder/)
[![Docker Stars](https://badgen.net/docker/stars/bral1488/python_docker_builder?icon=docker&label=stars)](https://hub.docker.com/repository/docker/bral1488/python_docker_builder/)


***A special repository for building docker images and artifacts for 214 cabinet.***


Getting Started
-------------

1. Create new requirements file using a template ```{your_project}_requirements.txt``` and place it into [requirements](requirements) dir.


2. Test it using ``` sh ./scripts/pip_test_env.bash ./requirements/{your_project}_requirements.txt```.


3. Add new **project_type** in [docker-image.yml](.github%2Fworkflows%2Fdocker-image.yml) and [publish_artifacts.yml](.github%2Fworkflows%2Fpublish_artifacts.yml)


4. Create new [Dockerfile](https://docs.docker.com/build/building/packaging/#:~:text=A%20Dockerfile%20is%20a%20text,Description) using a template ```Dockerfile_{your_project}``` and place it into [dockerfiles](dockerfiles)[requirements](requirements) dir.


5. Just Commit to [main branch](https://github.com/bralbral/PythonDockerImages/tree/main)


6. Check [actions](https://github.com/bralbral/PythonDockerImages/actions) to collect latest artifacts.
  ![Alt text](artifacts.png?raw=true "artifacts")


7. Check [dockerhub](https://hub.docker.com/r/bral1488/python_docker_builder/tags) repo to collect latest images.
  ![Alt text](dockerhub.png?raw=true "dockerhub")

