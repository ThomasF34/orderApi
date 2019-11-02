# Api for Alexa FoodCommand Skill

## Routes

> All preceded by <adress>:<port>/api/v1

- [x] /users List users (GET)
- [x] /users/:id All information of a user (GET)
- [x] /users/:id/address Address of a user (GET)
- [ ] /users/:id/usualOrder Usual order of a user (GET)

## Local usage 

Install ruby with **rbenv**, rails with `gem install rails` and all needed gems with `bundle install` then :

```
rails db:setup
rails s
```
