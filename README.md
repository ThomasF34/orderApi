# Api for Alexa FoodCommand Skill

## Routes

> All preceded by <adress>:<port>/api/v1

- [x] /users List users (GET)
- [x] /users/:id All information of a user (GET)
- [x] /users/:id/address Address of a user (GET)
- [ ] /users/:id/usualOrder Usual order of a user (GET)
- [ ] /users/:id/orders Make order (POST) -> Still have to define body. It will
  contains address and order
- [ ] /users/:id/card Knows if a card is register or not. If no card is
  registered, the user should not use the Skill to register it. (GET)

## Local usage 

Install ruby with **rbenv**, rails with `gem install rails` and all needed gems with `bundle install` then :

```
rails db:setup
rails s
```
