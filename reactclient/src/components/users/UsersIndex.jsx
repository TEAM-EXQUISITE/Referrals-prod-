import axios from 'axios'; 
import { useEffect, useState } from 'react';

const API_URL = "https://localhost:5000/users"; 

//gets api data
async function getAPIData(){
    const response = await axios.get(API_URL); 
    return response.data; 
}
export default function Index(){
    const [users, setUsers] = useState([]); 

    useEffect (() =>{
        let mounted = true; 
        getAPIData().then((items) => {
            if(mounted){
                setUsers(items); 
            }
        })
        return () => {mounted = false}; 
    }, []);

    return (
        <div>This is index</div>
    );
}