BB_DIR="/root/ODNBlockbuster"
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color


echo -n "Copying Blockbuster service file: "

OUTPUT=$(cp $BB_DIR/service/blockbuster.service /lib/systemd/system/ 2>&1)
    if [[ $? -ne 0 ]]; then
        echo -e "${RED}FAILED${NC}"
        echo "There was an error copying service file."
        echo $OUTPUT
        exit 1
    else
        echo -e "${GREEN}SUCCESS${NC}"
    fi

    echo -n "Please enter your API key: "
    	read APIKEY

    echo -n "Applying your key: $APIKEY "
    sed -i "s/MYKEY/$APIKEY/" ./app.js

    systemctl daemon-reload

    echo -n "Enable Blockbuster service on boot: "

    OUTPUT=$(systemctl enable blockbuster 2>&1)

    if [[ $? -ne 0 ]]; then
        echo -e "${RED}FAILED${NC}"
        echo "There was an error enabling the service."
        echo $OUTPUT
        exit 1
    else
        echo -e "${GREEN}SUCCESS${NC}"
    fi

    echo -n "Starting Blockbuster: "

    OUTPUT=$(systemctl start blockbuster 2>&1)

    if [[ $? -ne 0 ]]; then
        echo -e "${RED}FAILED${NC}"
        echo "There was an error starting Blockbuster."
        echo $OUTPUT
        exit 1
    else
        echo -e "${GREEN}SUCCESS${NC}"
    fi

    echo -n "Confirming Blockbuster has started: "

    IS_RUNNING=$(systemctl show -p ActiveState --value blockbuster)

    if [[ $IS_RUNNING == "active" ]]; then
        echo -e "${GREEN}SUCCESS${NC}"
    else
        echo -e "${RED}FAILED${NC}"
        echo "There was an error starting Blockbuster."
        echo $OUTPUT
        exit 1
    fi

