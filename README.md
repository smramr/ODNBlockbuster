**Disclaimer: I have modified Yolan Maldonado's https://github.com/Y0lan odn-smart-publisher to use OMDb's API.**
</br>
</br>
</br>
This script collects metadata of a random movie and uploads it to the DKG.
```
Trying to publish: 
{"@context":"https://schema.org/","@type":"Movie","Title":"12 Strong","Director":{"@type":"Person","name":"Nicolai Fuglsig"},"Genre":"Action, Drama, History","Poster":"https://m.media-amazon.com/images/M/MV5BNTEzMjk3NzkxMV5BMl5BanBnXkFtZTgwNjY2NDczNDM@._V1_SX300.jpg","Plot":"12 Strong tells the story of the first Special Forces team deployed to Afghanistan after 9/11; under the leadership of a new captain, the team must work with an Afghan warlord to take down the Taliban.","Produced":"2018","Rating":[{"Source":"Internet Movie Database","Value":"6.6/10"},{"Source":"Rotten Tomatoes","Value":"50%"},{"Source":"Metacritic","Value":"54/100"}]}
Successfully published : 
{"status":"COMPLETED","data":{"id":"486f308cc9eb3988d388e162f495fe47a445e938ac02b1a199ad51ea589d24bb","rootHash":"c305e47fe1ca05fabd3ee601b059200add0c3c0313bd335610792734c70d20a0","signature":"0xaf35a7e9955841138229c635b8dd5ed4440d69fe4cfae43d7b7858e18519326c217e5ade6ed811cdad50601c9d17e9d6fcea3018348aa347bb30fb32154db8cd1b","metadata":{"type":"Movie","timestamp":"2022-01-14T08:59:30.069Z","issuer":"0x09d88eabd226f94c14d89dfaad63221e3438d9df","visibility":true,"dataHash":"9a1edc2ae16dddecec2c4164b73e345d6fc56262d1335fabefc1a66da65e157b"},"blockchain":{"name":"polygon::testnet","transactionHash":"0xab02498c27d3e683209e210466315de0f56fe27bc7092680f47ecfcd41701530"}}}
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


