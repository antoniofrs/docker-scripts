# Docker scripts

## Docker cargo

docker-cargo allow you to import and export docker volumes.

### To export a list of volumes:

`docker-cargo export $(docker volume ls -q --filter "name=regex_filter_here")`

A folder called `volumes_export` will be created containing the volumes in tar.gz format.

### To import a list of volumes:

`docker-cargo import $(ls volumes_export/*.tar.gz)`


Enjoy!
