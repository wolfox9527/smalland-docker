# Smalland Container

Work in progress. Currently, the image has to be built manually.

Clone the repo and change the configs to your liking.

## Docker compose
WIP

## Build image
`docker build . -t mrmightynighty/smalland`

## Run image
`docker run --name smalland-dedicated -v HOSTPATH:/home/steam/smalland-dedicated -p 7777:7777/tcp -p 7777:7777/udp -p 7778:7778/tcp -p 7778:7778/udp mrmightynighty/smalland`