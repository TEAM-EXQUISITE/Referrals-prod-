import axios from 'axios'; 

const API_URL = "https://localhost:5000/users"; 

//gets api data
async function getAPIData(){
    const response = await axios.get(API_URL); 
    return response.data; 
}
export default function Index(){
    return (
        <div>This is index</div>
    );
}