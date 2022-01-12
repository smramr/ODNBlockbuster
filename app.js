import fs from 'fs-extra'
import DKGClient from 'dkg-client'
import run from "./api/get-data.js";
import randomWords from 'random-words'
const URL = 'https://www.omdbapi.com/?i=tt3896198&apikey=MYKEY&t='+randomWords()


const endpoint = '0.0.0.0'
const port = 8900
const options = {endpoint, port, useSSL: false, loglevel: 'info', maxNumberOfRetries: 100};


const remove_all = () => {
    fs.emptydir("./data")
}

const write = async (movies) => {

    if (!fs.existsSync('./data')) {
        fs.mkdirSync('./data');
    }

    remove_all()

    try {
            const data = await fs.readJson('./context.json')
	    data["name"] = movies["Title"]
	    data["image"] = movies["Poster"]
	    data["description"] = movies["Plot"]
	    data["Rate"]["Value"] = movies["Rated"]
	    data["Produced"]["Value"] = movies["Year"]

            await fs.writeJson('./data/' + 'Rate' +  '.json', data)
        
    } catch
        (error) {
        console.log(error.message)
    }
}

const publish = async () => {
    const client = new DKGClient(options)
    const files = await fs.promises.readdir('./data')
    for (const file of files) {
        const content = await fs.readJson('./data/' + file)
        const options = {
            filepath: './data/' + file,
            assets: ['0x123456789123456789123456789'],
            keywords: ['Movie DB', '@ethsplainer', 'Rating'],
            visibility: true
        }
        console.log("Trying to publish: \n" + JSON.stringify(content))
        await client.publish(options).then((result) => console.log("Successfully published : \n" + JSON.stringify(result)))
            .catch((error) => console.log(error.message))
    }
}

const movies = await run(URL)
write(movies).then(() => publish()).then(() => remove_all())
