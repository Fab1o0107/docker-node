# Docker Node
A repository that contains Docker (OCI format) base images for Node.js (that I used in my projects)

Available on [Docker Hub](https://hub.docker.com/r/fab1o0107/node) and [GitHub Container Registry](/pkgs/container/node)!


### Information for dev version
There are `dev` flavor images available which is mainly used for building Node.js Docker images.

These images are meant to be used in a [multi-stage build configuration](https://docs.docker.com/develop/develop-images/multistage-build/), which is build stage (installing, deps compiling, compiling, etc), and final stage (production image)