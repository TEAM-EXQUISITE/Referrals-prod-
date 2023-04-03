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

Start up tailwind by running `rails tailwindcss:watch`in the app's root to apply the tailwind styles.
