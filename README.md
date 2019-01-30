# AceBook
[![Build Status](https://travis-ci.com/Sindex42/acebook-team-rocket.svg?branch=master)](https://travis-ci.com/Sindex42/acebook-team-rocket)
[![Maintainability](https://api.codeclimate.com/v1/badges/265bb465dc552749142e/maintainability)](https://codeclimate.com/github/Sindex42/acebook-team-rocket/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/265bb465dc552749142e/test_coverage)](https://codeclimate.com/github/Sindex42/acebook-team-rocket/test_coverage)

Our Trello board is located here: https://trello.com/b/wJgduTRo/acebook-team-rocket


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

### Signing up

* Users can click on a link which will take them to a signup page.
* Fill in the form with a name, email address, and provide a password and password confirmation.
* You will then be taken to a page containing some posts


## Technologies used

Tech | Description
------------- | -------------
[Ruby](https://www.ruby-lang.org/en/) | Main backend language
[Ruby on Rails](https://rubyonrails.org/) | Ruby web application framework
[Travis CI](https://travis-ci.org/) | Continuous integration running tests and linters before merging branches
[Code Climate](https://codeclimate.com/) | Automated code reviview for code quality and complexity
[postgresql](https://www.postgresql.org/) | Object-relational database management system
[Trello](https://trello.com/) | Tracking and organising workflow



Pending | ---
------------- | -------------
[SimpleCov](https://github.com/colszowka/simplecov) | testing coverage
[Heroku](https://www.heroku.com/) | hosting


## Learning log

* To see a log of our learnings throughout this project, please refer to our project [wiki](https://github.com/Sindex42/acebook-team-rocket/wiki)

## Contributors

* [Connor Kam-Cheong](https://github.com/sindex42)
* [Gabriel Matos](https://github.com/GabMat97)
* [Hui-An Yang](https://github.com/anhuiyang)
* [Simon Cass](https://github.com/scass91)
