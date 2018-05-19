# project
ruby api

## install project:
* create app with mysql: `rails new project -d mysql`
* remove tzinfo-data: `tzinfo-data', platforms: [...`
* install packages: `bundle install`

## create a api controller:
`rails g controller api/v1/base --no-assets`

## create a model:
`bin/rails generate model modle_name`

## create a migration:
`bin/rails generate migration NewMigration`

## database migrate:
`bin/rails db:migrate RAILS_ENV=development`
`bin/rails db:migrate:redo`
`bin/rails db:rollback`

## active record document:
http://api.rubyonrails.org/v5.2.0/classes/ActiveRecord/ConnectionAdapters/SchemaStatements.html

## rabl document:
https://github.com/nesquena/rabl

## run devServer:
`bin/rails server`