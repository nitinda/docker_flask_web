NAME   := nitinda/docker_flask_web
TAG    := $$(git log -1 --pretty=%!h(MISSING))
IMG    := ${NAME}:${TAG}
LATEST := ${NAME}:latest
 
build:
  @docker build --rm -t ${IMG} .
  @docker tag ${IMG} ${LATEST}
 
# push:
#   @docker push ${NAME}
 
# login:
#   @docker log -u ${DOCKER_USER} -p ${DOCKER_PASS}