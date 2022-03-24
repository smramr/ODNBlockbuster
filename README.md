**Work in progress. Feedback is welcomed! @ethsplainer**
</br>

This script collects metadata of a random movie and uploads it to the DKG.

**Example data**
```
{
  "@type": "http://schema.org/Movie",
  "http://schema.org/actor": {
    "@type": "http://schema.org/Person",
    "http://schema.org/name": "Ram Charan, Genelia D'Souza, Shazahn Padamsee"
  },
  "http://schema.org/aggregateRating": {
    "@type": "http://schema.org/AggregateRating",
    "http://schema.org/ratingValue": "6.7"
  },
  "http://schema.org/award": "3 nominations",
  "http://schema.org/countryOfOrigin": "India",
  "http://schema.org/dateCreated": {
    "@type": "http://schema.org/Date",
    "@value": "2010"
  },
  "http://schema.org/datePublished": {
    "@type": "http://schema.org/Date",
    "@value": "26 Nov 2010"
  },
  "http://schema.org/description": "A man, who doesn't believe that love can last a lifetime, pursues an exuberant romantic, but their clashing ideologies keep them apart.",
  "http://schema.org/director": {
    "@type": "http://schema.org/Person",
    "http://schema.org/name": "Bommarillu Baskar"
  },
  "http://schema.org/duration": "162 min",
  "http://schema.org/name": "Orange",
  "http://schema.org/thumbnailUrl": {
    "@id": "https://m.media-amazon.com/images/M/MV5BM2ZkZGIwZDAtNGU1ZS00NTlkLThjYjYtMjU5MzQzNDQyMTBmXkEyXkFqcGdeQXVyODA2ODM3NDQ@._V1_SX300.jpg"
  }
}
```

**Installation:**

***Make sure you have an OMDB API key. Get one here: https://www.omdbapi.com/apikey.aspx***
```
sudo git clone https://github.com/ethsplainer/ODNBlockbuster.git && cd ODNBlockbuster && npm i && ./Installer.sh
```
**Reading logs***
```
journalctl -u blockbuster --output cat -fn 100
```
**Service control**
```
systemctl {status}/{start}/{stop} blockbuster
```
