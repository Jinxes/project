# project
ruby api

## install project:
* create app with mysql: `rails new project -d mysql`
* remove tzinfo-data: `tzinfo-data', platforms: [...`
* install packages: `bundle install`

## run migrate:
`rails db:migrate RAILS_ENV=development`

## create a api controller:
`rails g controller api/v1/base --no-assets`

## create a model:
`bin/rails generate model modle_name`

## run devServer:
`bin/rails server`
