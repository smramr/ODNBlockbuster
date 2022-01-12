'use strict';
import axios from 'axios'
const query = async (url) => {
    try {
        const result = await axios.get(url);
        return result.data;
    } catch (err) {
        console.log(err.message);
    }
}

const run = async (url) => {
    return await query(url);
}

export default run;
