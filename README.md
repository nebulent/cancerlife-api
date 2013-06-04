Cancerlife API for communicating with the application
---
This is a rails application, API in development, used to communicate with the Cancerlife application itself.

## Features

- console (`rails c`)
- start application on local machine (`rails s`)

## Getting started

1. clone the repository
2. Install dependencies (`bundle`)
3. create migrations manually or generate using `rake db:create_migration NAME=create_foos`
4. migrate (`rake db:migrate`)
5. create models in app/models
6. Profit!

## Executing API calls
---
The API receives RESTful requests, mostly using json.
How do you execute it? After running the project on your local machine, execute via curl(for example) a POST request for:
`http://localhost:3000/api/users/create`,
with the json you want to pass. Judging the response you get(also a json), you will see whether you were able to create a user, or not.
