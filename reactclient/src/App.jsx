import './App.css'
import UsersIndex from './components/users/UsersIndex'
import getAPIData from '../api-connection'
import { useEffect, useState } from 'react';

const API_URL = 'https://localhost:5000/users' 

function App() {
  const [users, setUsers] = useState([]); 

  useEffect(() => {
    let mounted = true; 
    getAPIData(API_URL).then((items) => {
      if(mounted) {
        setUsers(items); 
      }
    })
    return () => {mounted = false;}; 
  },[]);
  return (
   <>
    <div>hello</div>
    <UsersIndex users = {users}/>
   </>
  )
}

export default App
