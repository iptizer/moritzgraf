# website as docker image

Build container and push to registry

```bash
build.sh
cat build.sh # to execute commands seperately
```

Then ssh to the server and redeploy container:

```bash
ssh moritzgraf.de
cd /home/docker/container/
docker-compose-fullupgrade moritzgrafde
```
