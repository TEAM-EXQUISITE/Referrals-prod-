
export default function UsersIndex(props){
    return (
        <div>
            <h1>These users are from the api</h1>
            {props.users.map((user) => {
                return (
                    <div key={user.id}>
                        <h2>{user.name}</h2>
                        <p>{user.email}</p>
                    </div>
                )
            })} 
        </div>
    );
}