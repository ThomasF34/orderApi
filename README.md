# Api for Alexa FoodCommand Skill

## Routes

> All preceded by <adress>:<port>/api/v1

- [x] /products\[?top=\<limit\>\] List products (GET)
- [x] /users List users (GET)
- [x] /users/:id All information of a user (GET)
- [x] /users/:id/address Address of a user (GET)
- [x] /users/:id/usualOrder Usual order of a user (GET)
- [x] /users/:id/orders Make order (POST) -> Still have to define body. It will
  contains address and order
- [x] /users/:id/cart Simulate order and return the delivery ETA and the price (POST)
- [x] /users/:id/card Knows if a card is register or not. If no card is
  registered, the user should not use the Skill to register it. (GET)

## Disclaimer

The aim of this API is to mock the behavior of a restaurant in order to make order through Alexa Skill. Thus, we decided to ignore some feature that seems irrelevant to us **based on the context of our project**

It's important to note that :
- All information are accessible through HTTP requests
- No authentication system is used
- No testing

## Local usage

Install ruby with **rbenv**, rails with `gem install rails` and all needed gems with `bundle install` then :

```
rails db:setup
rails s
```

## Deploy

We used Heroku at https://food-mock-api.herokuapp.com/

To setup DB use
```
rake db:schema:load
rake db:migrate
rake db:seed
```
