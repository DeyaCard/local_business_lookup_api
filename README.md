# Local Business Lookup

An API created to search for local restaurants and shops.

## By Deya Card

## Technologies used:
* Ruby
* Rails
* Gemfile
* Active Record
* Faker
* FactoryBot
* RSpec



## Setup/Installation Requirements:
* Clone or download this repository onto your desktop: https://github.com/DeyaCard/local_business_lookup_api
* Navigate to top-level of directory
* Open code editing software, such as VS Code
* run bundle install in the terminal
* run rake db:create
* run rake db:test:prepare
* run rake db:migrate
* run rake db:seed
* run rails s
* In your browser of choice, navigate to localhost:3000
* Enjoy!

## API Endpoints

| Method       | URL | Result |
| :--- |:---| :---|
|GET| `localhost:3000/`| Returns a list of all businesses in the database|
|GET | `localhost:3000/businesses`| Returns a list of all businesses in the database|
|GET | `localhost:3000/businesses/24`| Returns all information related to business with ID=24|
|GET | `http://localhost:3000/businesses/search/?restaurant=Olive Garden`| Returns all businesses in database where restaurant is Olive Garden|
|GET | `http://localhost:3000/businesses/search/?shop=Old Navy` | Returns business with shop "Old Navy"|
|GET|`http://localhost:3000/businesses/random`|Returns a random restaurant from the database|
|POST|`http://localhost:3000/businesses/?restaurant=Olive Garden&shop=Old Navy`|Adds business to database. Restaurant:Olive Garden, Shop: "Old Navy". If POST is successful, returns database object for newly created business.|
|PUT/PATCH|`http://localhost:3000/businesses/24?restaurant=Nobu`|Updates the restaurant for a business with ID=24. If PUT/PATCH is successful, returns database object for newly updated business.|
|DELETE|`http://localhost:3000/businesses/24`|Deletes the business with ID=24 from database|


## Known Bugs:
* No known bugs. Please report issues to thedeyacard@gmail.com


## License: 
* MIT

Copyright (c) 2022 Deya Card

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


