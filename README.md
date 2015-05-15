** Artist's and Venues App

**** Author: Erin Collins

**** Date: May 15, 2015

*** Description

Using Ruby, this application allows a user to complete the following user stories.

* As a user, I want to be able to add, update, delete and list bands.
* As a user, I want to be able to add venues (don't worry about updating, listing or destroying venues).
* As a user, I want to be able to see all of the venues a band has played on the individual band page.
* As a user, I want to be able to see a list of all venues where the band has/will have a show.
* As a user, I want to be able to add a venue for a band and vice versa.
* As a user, I want band names and venues to be saved with a capital letter no matter how I enter them.
* As a user, I do not want bands and venues to be saved if I enter a blank name.


*** Databases
development:
  adapter: postgresql
  database: bands_venues_development

test:
  adapter: postgresql
  database: bands_venues_test

*** Setup Instructions

* Download all files
* Run db:create
* Run bundle install
* Run Ruby app.rb
* Enter localhost:4567 into address bar




The MIT License

Copyright (c) 2015 Erin Collins erincollinsthethird@gmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
