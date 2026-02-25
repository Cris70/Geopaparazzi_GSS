1. commit the changes to git
2. create and assign a tag in the format `n.nn+BB`
3. push everything (the tag, too)

then, exec:

4. `./scripts/release_sync_version.sh`
5. `./prepare_for_docker.sh`
6. `./build_docker.sh`
7. `docker save -o Geopaparazzi_GSS_n.nn_BB.tar bluebiloba/gss-docker:n.nn_BB`
8. `scp Geopaparazzi_GSS_n.nn_BB.tar.gz bluebiloba@192.168.111.107:/home/bluebiloba/`

then, on the remote:

9. `docker load -i ./Geopaparazzi_GSS_n.nn_BB.tar`
