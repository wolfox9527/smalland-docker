# Smalland: Survive the Wilds Linux Container

An image loosely based on the cm2network/SteamCMD images. The container uses the native Linux files for running a dedicated server.

## Run with docker-compose.yaml
Just copy the docker-compose.yaml file, change the configs to your liking and run it.

## Run image directly
`docker run --name smalland-dedicated -v HOSTPATH:/home/steam/smalland-dedicated -p 7777:7777/tcp -p 7777:7777/udp -p 7778:7778/tcp -p 7778:7778/udp ghcr.io/mrmightynighty/smalland-docker:latest`