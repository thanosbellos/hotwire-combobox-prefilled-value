# README

## Description
### scenario 1 - async search with freetext input

- User can choose his name from the list of already registered user names.
- He can also input a new name in the text box, if he can't find his name in the list.
- When he visits the edit page, the name is not prefilled in the combobox (the display value at least is missing)

To reproduce you can start by visiting and creating a new user:
```http://localhost:3000/users/```

### scenario 2 - grouped select

- User can choose his favorite movie from the list of movies.
- The movies are grouped by genre.
- When he visits the edit page we get an error: `undefined method `undefined method `value' for an instance of HotwireCombobox::Listbox::Group`

## Setup
- Run ./bin/rails db:seed to seed the database with some dummy movies data
