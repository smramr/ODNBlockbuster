**Disclaimer: I have modified Yolan Maldonado's https://github.com/Y0lan odn-smart-publisher to use OMDb's API.**
**Work in progress. Feedback is welcomed! @ethsplainer**
</br>
</br>
</br>
This script collects metadata of a random movie and uploads it to the DKG.

**Example data**
```
{"@context":"https://schema.org","@type":"Movie","actor":{"@type":"Person","name":"Ram Charan, Genelia D'Souza, Shazahn Padamsee"},"countryOfOrigin":"India","datePublished":"26 Nov 2010","duration":"162 min","thumbnailUrl":"https://m.media-amazon.com/images/M/MV5BM2ZkZGIwZDAtNGU1ZS00NTlkLThjYjYtMjU5MzQzNDQyMTBmXkEyXkFqcGdeQXVyODA2ODM3NDQ@._V1_SX300.jpg","aggregateRating":{"@type":"AggregateRating","ratingValue":"6.7"},"description":"A man, who doesn't believe that love can last a lifetime, pursues an exuberant romantic, but their clashing ideologies keep them apart.","dateCreated":"2010","director":{"@type":"Person","name":"Bommarillu Baskar"},"name":"Orange","award":"3 nominations"}
```
![image](https://user-images.githubusercontent.com/97244524/149531994-32c10675-cae3-4f15-a1cc-418eaea74c60.png)

**Installation:**
```
sudo git clone https://github.com/ethsplainer/ODNBlockbuster.git && cd ODNBlockbuster && npm i && ./createService.sh 
```
**Change default API key** </br>
Replace 1234 with your own API key. You can get one here for free: https://www.omdbapi.com/apikey.aspx
```
sed -i 's/MYKEY/1234/' app.js
```
**Executing the script**
```
nohup ./publish.sh &
```



