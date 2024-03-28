# README

## Description
### scenario 1 - async search with freetext input

- User can choose his name from the list of already inserted user names in the db. We use a combobox with async search to load existing users names.
- He can also input a new name in the combobox, if he can't find the name in the list.

To reproduce you can start by:
 1. create a new user (freely add a new name or select an existing one from other users)
 2. try to edit user details.
    
When the user visits the edit page, the name is not prefilled in the combobox (the display value at least is missing)

### scenario 2 - grouped select

- User can choose his favorite movie from the list of movies.
- The movies are grouped by genre.

To reproduce you can start by:
 1. create a new user and select one movie from the list.
 2. try to edit user details.
 When the user visits the edit page we get an error: `undefined method `undefined method `value' for an instance of HotwireCombobox::Listbox::Group`

## Setup
- Run ./bin/rails db:seed to seed the database with some dummy movies data
