# RESTAURANT API
This is a RESTful API for Pizza Restaurants
## Requirements
- Ruby 2.7.4 or later
- Rails 6.1.4 or later

## Setup
- Clone this repository
```
SSH - git@github.com:Barsu5489/Piza.git

HTTPS  - https://github.com/Barsu5489/Piza.git
```
- Run
```
bundle install
rails db:migrate db:seed
rails s
```

## Endpoints
 `GET /restaurants`
 - Return a list of all Restaurants

 `GET /restaurants/:id`
 - Returns a restaurant with associated pizzas

 `DELETE /restaurants/:id`
 - Deletes/destroy restaurant along with its associations

 `GET /pizzas`
 - Returns a list of pizzas

 `POST /restaurant_pizzas`
 - Creates new Restaurant Pizza associated with existing ``Pizza` and `Restaurant`

 ## Copyright
 - Feel free to clone and use however you want- MIT license
 - Owner - [Emmanuel Barsulai]
 - Github - [`https://github.com/Barsu5489`]