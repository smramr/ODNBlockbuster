Disclaimer: 99.9% of the code belongs to Yolan Maldonado https://github.com/Y0lan. Use his odn-smart-publisher on your v6 test net nodes.
I have changed the code a (tiny) bit to upload OMDb API data.





This script collects the title, plot, rating and production date of a random movie and uploads it to the DKG.



Installation:

sudo git clone https://github.com/ethsplainer/ODNBlockbuster.git && cd ODNBlockbuster && npm i && chmod +x publish.sh 

Replace 1234 with your own API key. You can get one here for free: https://www.omdbapi.com/apikey.aspx

sed -i 's/MYKEY/1234/' ~/ODNBlockbuster/app.js


Run:

nohup ./publish.sh &

To view logs:

tail -f nohup.out (press CTRL+c to exit logs)

