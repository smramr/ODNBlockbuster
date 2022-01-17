#!/bin/bash

OS_VERSION=$(lsb_release -sr)
PROJECT_NAME="ODNBlockbuster"
WORKING_DIR="/root/ODNBlockbuster"
N1=$'\n'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color



echo "Installing $PROJECT_NAME${N1}"

echo -n "Verifying otnode installed: "

if [[ ! -d '/root/ot-node' ]]; then
    echo -e "${RED}FAILED${NC}"
    echo "The node is not installed."
    echo $OUTPUT
    exit 1
else
    echo -e "${GREEN}SUCCESS${NC}"
fi

echo -n "Verifying otnode running: "

OUTPUT=$(ps ax | grep -e '/usr/bin/node /root/ot-node/index.js' | wc -l >/dev/null 2>&1)

if [[ $OUTPUT -eq 0 ]]; then
    echo -e "${RED}FAILED${NC}"
    echo "The node is not running."
    echo $OUTPUT
    exit 1
else
    echo -e "${GREEN}SUCCESS${NC}"
fi

echo -n "Copying service file: "

OUTPUT=$(cp $WORKING_DIR/data/graphdb.service /lib/systemd/system/ >/dev/null 2>&1)

if [[ $? -ne 0 ]]; then
    echo -e "${RED}FAILED${NC}"
    echo "There was an error copying the service file."
    echo $OUTPUT
    exit 1
else
    echo -e "${GREEN}SUCCESS${NC}"
fi

systemctl daemon-reload

echo -n "Starting $WORKING_DIR: "

OUTPUT=$(systemctl start blockbuster >/dev/null 2>&1)

if [[ $? -ne 0 ]]; then
    echo -e "${RED}FAILED${NC}"
    echo "There was an error starting $PROJECT_NAME."
    echo $OUTPUT
    exit 1
else
    echo -e "${GREEN}SUCCESS${NC}"
fi

echo -n "Confirming $PROJECT_NAME has started: "

IS_RUNNING=$(systemctl show -p ActiveState --value blockbuster)

if [[ $IS_RUNNING == "active" ]]; then
    echo -e "${GREEN}SUCCESS${NC}"
else
    echo -e "${RED}FAILED${NC}"
    echo "There was an error starting GraphDB."
    echo $OUTPUT
    exit 1
fi