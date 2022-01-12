Disclaimer: 99.9% of the code belongs to Yolan Maldonado https://github.com/Y0lan. I have changed it up a (tiny) bit to upload OMDb API data.





This scripts collects the title, plot, rating and production date of a random movie and uploads it to the DKG.


Installation:

sudo git clone https://github.com/ethsplainer/ODNBlockbuster.git && cd ODNBlockbuster && npm i

Replace 1234 with your own API key. You can get one here for free: https://www.omdbapi.com/apikey.aspx
sed -i 's/MYKEY/1234/' ~/ODN-Blockbuster/app.js


Run:

nohup ./publish.sh &


