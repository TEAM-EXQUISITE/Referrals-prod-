import axios from 'axios'; 
export default async function getAPIData(api_url){
    const response = await axios.get(api_url); 
    return response.data; 
}