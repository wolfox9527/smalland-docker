#!/bin/bash

## Configuration ##
# Make sure there no spaces in any configuratin strings below

# Name of the server as it should appear on the server browser screen (for example "My Server")
SERVERNAME="Sample Server by MrMightyNighty"

# World name which corresponds to the the save file name (for example "World")
WORLDNAME="World"

# Password, leave it empty for open servers (for example "myPassword", can be empty "")
PASSWORD="CHANGEME"

# Friendly fire between players, aka PVP (0 or 1)
FRIENDLYFIRE=0

# Peaceful mode (0 or 1)
PEACEFULMODE=0

# Keep inventory on death (0 or 1)
KEEPINVENTORY=0

# Disable building wather deterioration (0 or 1)
NODETERIORATION=0

# Private server is hidden on the server browser (0 or 1)
PRIVATE=0

# Length of day in seconds (default is 1800 which is 30 minutess)
LENGTHOFDAYSECONDS=1800

# Length of season in seconds (default is 10800 which is 3 hours)
LENGTHOFSEASONSECONDS=10800

# Creature health modifier (20-300 default is 100)
CREATUREHEALTHMODIFIER=100

# Creature damage modifier (20-300 default is 100)
CREATUREDAMAGEMODIFIER=100

# Nourishment loss modifier (0-100 default is 100)
NOURISHMENTLOSSMODIFIER=100

# Fall damage modifier (50-100 default is 100)
FALLDAMAGEMODIFIER=100

# Additional configuration
PORT=7777
DEPLOYMENTID="50f2b148496e4cbbbdeefbecc2ccd6a3"
CLIENTID="xyza78918KT08TkA6emolUay8yhvAAy2"
CLIENTSECRET="aN2GtVw7aHb6hx66HwohNM+qktFaO3vtrLSbGdTzZWk"
PRIVATEKEY=""

PARAMS="/Game/Maps/WorldGame/WorldGame_Smalland?SERVERNAME=\"${SERVERNAME}\"?WORLDNAME=\"${WORLDNAME}\""
[ "${PASSWORD}" != "" ] && PARAMS="${PARAMS}?PASSWORD=\"${PASSWORD}\""
[ "${FRIENDLYFIRE}" = 1 ] && PARAMS="${PARAMS}?FRIENDLYFIRE"
[ "${PEACEFULMODE}" = 1 ] && PARAMS="${PARAMS}?PEACEFULMODE"
[ "${KEEPINVENTORY}" = 1 ] && PARAMS="${PARAMS}?KEEPINVENTORY"
[ "${NODETERIORATION}" = 1 ] && PARAMS="${PARAMS}?NODETERIORATION"
[ "${PRIVATE}" = 1 ] && PARAMS="${PARAMS}?PRIVATE"
PARAMS="${PARAMS}?lengthofdayseconds=${LENGTHOFDAYSECONDS}"
PARAMS="${PARAMS}?lengthofseasonseconds=${LENGTHOFSEASONSECONDS}"
PARAMS="${PARAMS}?creaturehealthmodifier=${CREATUREHEALTHMODIFIER}"
PARAMS="${PARAMS}?creaturedamagemodifier=${CREATUREDAMAGEMODIFIER}"
PARAMS="${PARAMS}?nourishmentlossmodifier=${NOURISHMENTLOSSMODIFIER}"
PARAMS="${PARAMS}?falldamagemodifier=${FALLDAMAGEMODIFIER}"
PARAMS="${PARAMS} -ini:Engine:[EpicOnlineServices]:DeploymentId=${DEPLOYMENTID}"
PARAMS="${PARAMS} -ini:Engine:[EpicOnlineServices]:DedicatedServerClientId=${CLIENTID}"
PARAMS="${PARAMS} -ini:Engine:[EpicOnlineServices]:DedicatedServerClientSecret=${CLIENTSECRET}"
[ "${PRIVATEKEY}" != "" ] && PARAMS="${PARAMS} -ini:Engine:[EpicOnlineServices]:DedicatedServerPrivateKey=${PRIVATEKEY}"
PARAMS="${PARAMS} -port=${PORT}"
PARAMS="${PARAMS} -NOSTEAM -log"

echo "Starting SMALLAND server as:"
echo "./SMALLANDServer.sh $PARAMS"
bash SMALLANDServer.sh $PARAMS
