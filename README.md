**Disclaimer: I have modified Yolan Maldonado's https://github.com/Y0lan odn-smart-publisher to use OMDb's API.**
</br>
</br>
</br>
This script collects metadata of a random movie and uploads it to the DKG.
```
{"@context":"https://schema.org","@type":"Movie","actor":{"@type":"Person","name":"Jack Nicholson, Helen Hunt, Greg Kinnear"},"aggregateRating":{"@type":"AggregateRating","bestRating":[{"Source":"Internet Movie Database","Value":"7.7/10"},{"Source":"Rotten Tomatoes","Value":"85%"},{"Source":"Metacritic","Value":"67/100"}]},"description":"A single mother and waitress, a misanthropic author, and a gay artist form an unlikely friendship after the artist is assaulted in a robbery.","date":{"@type":"Date","datePublished":"1997"},"director":{"@type":"Person","name":"James L. Brooks"},"name":"As Good as It Gets"}
``` 
**Installation:**
```
sudo git clone https://github.com/ethsplainer/ODNBlockbuster.git && cd ODNBlockbuster && npm i && chmod +x publish.sh 
```
**Change default API key** </br>
Replace 1234 with your own API key. You can get one here for free: https://www.omdbapi.com/apikey.aspx
```
sed -i 's/MYKEY/1234/' ~/ODNBlockbuster/app.js
```
**Executing the script**
```
nohup ./publish.sh &
```


