

# _Happy Haven Animal Shelter_

#### _A public API filled with dogs and cats available for adoption near you, 10/30/2020_

#### By _**Brian Harvey**_

## Description

_An API centered on making the pet adoption process much simpler. Dogs and Cats may be searched for by name and users will be returned key information like: age, breed, and a brief bio._

## Getting Started

* Copy link from [GitHub](https://github.com/brianharv/animal_shelter_api)
* Clone in terminal command line with <code> $ git clone {COPIED GitHub LINK} </code>
* Enter project root directory <code> $ cd animal_shelter_api </code>
* Bundle gems with <code> $ bundle install </code>
* Instantiate Rspec *_optional_* <code> $ bundle exec rails g rspec:install </code>
* Start the rails server <code> $ rails s </code>
* In the browser, navigate to: <code> localhost:3000 </code>
* Utilize Postman or cURL for API calls.

## Endpoints

| VERB   | ROUTE                        | CRUD   | DESCRIPTION                                        |
|--------|------------------------------|--------|----------------------------------------------------|
| GET    | /api/v1/pets                 | READ   | Returns an index of all available pets.            |
| GET    | /api/v1/{PET ID}             | READ   | Finds a pet by its :id which is an unique integer. |
| POST   | /api/v1/pets                 | CREATE | Add a pet entry to the API.                        |
| PUT    | /api/v1/{PET ID}             | PATCH  | Edit an entry.                                     |
| DELETE | /api/v1/pets/{PET ID}        | DELETE | Delete an entry.                                   |
| GET    | /api/v1/pets?name={PET NAME} | READ   | Search for pet by name.                            |


## Known Bugs

* random_pet method in pets_controllers is not working and I do no understand why. I would love some insight.

* [Here](https://chriskottom.com/blog/2017/04/versioning-a-rails-api/#:~:text=So%20yes%2C%20unless%20you're,your%20app%20really%20needs%20it.) Is a link to the versioning tutorial I followed and implemented.

* [Here](https://dev.to/risafj/guide-to-devisetokenauth-simple-authentication-in-rails-api-pfj) Here is the token authentication tutorial that I followed. Unfortunately I was not able to make it work. It's strange because it worked fine in the middle of the week.

## Support and contact details

_For any questions or feedback, feel free to [contact me](mailto:brian.harv3y@gmail.com)._

## Technologies Used

* Ruby 
* Rails
* Postman
* Faker
* FactoryBot


### License

*_This application operates under the GPL license._*

Copyright (c) 2020 **_Brian Harvey_**

