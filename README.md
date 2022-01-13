**Disclaimer: I have modified Yolan Maldonado's https://github.com/Y0lan odn-smart-publisher to use OMDb's API.**
</br>
</br>
</br>
This script collects meta data of a random movie and uploads it to the DKG.
```
Trying to publish: 
{"@context":"https://schema.org/","@type":["MovieDB","Title","Rate","Plot","Rating","Produced"],"name":"The Man Who Knew Too Much","image":"https://m.media-amazon.com/images/M/MV5BNjQ2OWFhMjItYmFmNC00OGQzLWE1ZTMtZGQwZDM3YWUzMDgxL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_SX300.jpg","description":"An American doctor and his wife, a former singing star, witness a murder while vacationing in Morocco, and are drawn into a twisting plot of international intrigue when their young son is kidnapped.","mpn":"925872","brand":{"@type":"Origintrail Community","name":"@ethsplainer"},"Rate":{"@type":"Number","value":"","Value":"PG"},"Produced":{"@type":"Number","value":"","Value":"1956"},"Rating":{"@type":"Number","value":"","Value":[{"Source":"Internet Movie Database","Value":"7.4/10"},{"Source":"Rotten Tomatoes","Value":"87%"},{"Source":"Metacritic","Value":"76/100"}]},"attributes":{"@type":"details"}}
Successfully published : 
{"status":"COMPLETED","data":{"id":"e4d89e68af7a022681a106c45bdef026c91cf40260ed6a237cf00c7301e37feb","rootHash":"58df6021967bdbb082c954d54f6f66cd67d21e82bb48cab8de8dfaf12fab1c60","signature":"0x9dc4f65a089f2af54b1171a7ae1d49edafda3583aea998e062b1dfe1749f2e641fd5a3aa6c72a2d7bcb57d3acdd005dc1e42f9a4b63aafad09b704e92c61be951c","metadata":{"type":["MovieDB","Title","Rate","Plot","Rating","Produced"],"timestamp":"2022-01-13T12:55:58.984Z","issuer":"0x09d88eabd226f94c14d89dfaad63221e3438d9df","visibility":true,"dataHash":"1ab8183dddbc3b2689e437c5cbfb6f679dce4eb577264dd1e3cf72ea0e34fe8b"},"blockchain":{"name":"polygon::testnet","transactionHash":"0x69b5258ce6907981e5255184a753e6eda5cf3581e09d2ecc32f712788bfc02c9"}}}
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


