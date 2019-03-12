# AceBook
[![Build Status](https://travis-ci.com/Sindex42/acebook-team-rocket.svg?branch=master)](https://travis-ci.com/Sindex42/acebook-team-rocket)
[![Maintainability](https://api.codeclimate.com/v1/badges/265bb465dc552749142e/maintainability)](https://codeclimate.com/github/Sindex42/acebook-team-rocket/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/265bb465dc552749142e/test_coverage)](https://codeclimate.com/github/Sindex42/acebook-team-rocket/test_coverage)

A two week group project to build a facebook clone using Ruby on Rails and React

* Our application is deployed on [Heroku](https://acebook-team-rocket.herokuapp.com)
* Our [Trello board](https://trello.com/b/wJgduTRo/acebook-team-rocket) 
* A separate frontend app that connects to the backend of this Rails app can be found [here](https://github.com/GabMat97/Acebook-team-rocket-frontend)


## How to contribute to this project
See [CONTRIBUTING.md](CONTRIBUTING.md)

## Getting started

1. Clone this repo `git clone git@github.com:Sindex42/acebook-team-rocket`
2. Change directory `cd acebook-team-rocket`
3. Run bundle to install dependencies `bundle install`
4. Create databases `bin/rails db:create`
5. Migrate tables `bin/rails db:migrate`

## Testing

To run the tests: `bundle exec rspec`


## Usage

1. Start the server `bin/rails server`
2. Navigate to the following page [http://localhost:3000](http://localhost:3000)
    1. Or to the deployed version on [Heroku](https://acebook-team-rocket.herokuapp.com)

### Signing up

![Imgur](http://i.imgur.com/NSdBKQn.png)

* Users can click on a link which will take them to a signup page.
* Fill in the form with a name, email address, and provide a password and password confirmation.
  * All fields must be present
  * Email addresses must be unique
  * Passwords must be between 6 and 10 characters long 
  * Password confirmation must match the password
* Users will be shown error messages if any of the fields are invalid

### Signing in

![Imgur](http://i.imgur.com/aRm26q2.png)

* Users will be redirected to the welcome page if accessing any pages relating to posts and are not signed in 
* Users will be redirected to the posts page if sign in is successful
* Users will see a welcome message upon signing in

### Posts

![Imgur](http://i.imgur.com/YNzXHJ8.png)

* Users can see posts in reverse chronological order
* Users can see the time and date of creation of a particular post
* Users can update posts for a maximum of 10 mins after creation


## Technologies used

Tech | Description
------------- | -------------
[Ruby](https://www.ruby-lang.org/en/) | Main backend language
[Ruby on Rails](https://rubyonrails.org/) | Ruby web application framework
[Travis CI](https://travis-ci.org/) | Continuous integration running tests and linters before merging branches
[Code Climate](https://codeclimate.com/) | Automated code reviview for code quality and complexity
[postgresql](https://www.postgresql.org/) | Object-relational database management system
[Trello](https://trello.com/) | Tracking and organising workflow
[SimpleCov](https://github.com/colszowka/simplecov) | Code coverage analysis tool for Ruby, badge provided trough Code Climate
[Heroku](https://www.heroku.com/) | Cloud platform hosting service
[JWT](https://jwt.io/introduction/) | JSON Web Token, for Frontend authentication tokens 
[Faker](https://github.com/stympy/faker) | A library for generating fake data, used for stubbing AJAX requests
[React](https://reactjs.org/) | A JavaScript library for building our frontend app 

## Learning log

* To see a log of our learnings throughout this project, please refer to our project [wiki](https://github.com/Sindex42/acebook-team-rocket/wiki)

## Contributors

* [Connor Kam-Cheong](https://github.com/sindex42)
* [Gabriel Matos](https://github.com/GabMat97)
* [Hui-An Yang](https://github.com/anhuiyang)
* [Simon Cass](https://github.com/scass91)
