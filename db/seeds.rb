# Create random users 
20.times do |n| 
    User.create(
        name: Faker::Name.name ,
        email: "user#{n+1}@example.com", 
        password: "password", 
        password_confirmation: "password"
    )
end 
