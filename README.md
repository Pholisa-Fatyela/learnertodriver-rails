# Learner to Driver
## Practice the SA learners test

### Prerequisites

You should have ruby installed this project runs on ruby 2.5.1
Postgresql needs to be installed for the database

## Dependecies

Rails Webpacker JS

## Set up
`git clone {repo_url}` clone the repository to your local dev enviroment
`bundle install` install gems
`yarn install` to install javascript packages
`rails db:migrate` migrate the database
`rails db:seed` to seed data
`rails s` to start

# Application config

main app www.learnertodriver.co.za

# Contributing

## Code Style

linters are used to keep a consistance code style, some on the styles to be noted for each language are:

### SCSS
We use to inforce simple styling rules like keeping a space after a colon
the rules can be found in `.csscomb.json` use also use linting with SASS lint, to warn against style violations config file is found in the root dir `.sass-lint.yml`
