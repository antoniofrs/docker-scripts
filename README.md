# Docker scripts

## Docker cargo

docker-cargo allow you to import and export docker volumes.

To export a list of volumes:

`docker-cargo export $(docker volume ls -q --filter "name=regex_filter_here"`


To import a list of volumes:

`docker-cargo import $(ls volumes_export/*.tar.gz)`


Enjoy!
