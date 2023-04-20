# Referrals

## Getting Started

### Pre-requisites and Local Development

Developers using this project should have ruby, rails, postgresql and tailwindcss installed

### Setting up the Backend

1. **Ruby 3.1.3** - Follow the instructions to install the latest version of ruby for your platform in the [ruby docs](https://www.ruby-lang.org/en/documentation/installation/).

2. **Rails 7.0.4.3** - Follow the instructions to install the latest version of rails for your platform in the [rails official repo](https://github.com/rails/rails).

3. **Gem dependencies** - Once rails is installed, enter into the project root directory and run `bundle install` to install of the app's dependencies.

4. **Postgresql v15** - Follow the instructions to install the latest version of postgresql for your platform in the [postgresql docs](https://www.postgresql.org/download/)

Once all dependencies are installed, enter into the root folder and run `rails server` to startup the backend service. This would start the app on port 3000 with a default **home** page

#### Key gem dependencies

- [Devise](https://github.com/heartcombo/devise) is a flexible fully built authentication gem handling users sign up and sign in. The version to use for the project is already listed in the gemfile , run `bundle install` in the project root.
- **Active Record** is the Ruby SQL toolkit and ORM we'll use to handle queries to the database.

### Setting up the frontend

Install tailwindcss from [the official documentation](https://tailwindcss.com)
Install node in order to have the npm package. This would be needed to start the react application
Start up tailwind by running `rails tailwindcss:watch`in the app's root to apply the tailwind styles.

#### Frontend Structure

The client side logic of this application is built as a separate react app. It communicates with the rails backend serving as an api. This communication is done using **axios**. Install **axios** via the command line by runnning
`$ npm i axios`

All of the client side logic resides in the **reactclient** folder in the root path of this project. Inside this directory is housed the **src** which contains the **components**. Each of the components have been separated following separation of concerns . That is, all of the **user** is housed in the user directory of the components folder. Same follows with other concerns.

Start up the client app after installing Node and with it its package manager by running the following three commands in order

1. `$ cd reactclient`
2. `$ npm install`
3. `$ npm run dev`

## Note

The frontend end interacts with the backend as a client to api service. Start up the backend first as it is proxy for the frontend. You can run multiple commands to start up the builds of the backend by running `bin/dev` in the projects root. This would fire up **foreman** to run the procfile. The frontend should be strted as earlier described.
