# Private Events (Rails Associations)

> We built a site similar to a private [Eventbrite](https://www.eventbrite.com/) which allows users to create events and then manage user signups. Users can create events and sign to attendee an event. Events take place at a specific date and at a location.

> A user can create events. A user can attend many events. An event can be attended by many users

> The main goal is to demonstrate mastering in building Rails Associations

## Features

If you're not an authenticated user

- Create User
- Log in

If you are an authenticated user

- See the list of Events available divided by upcoming and previous events
- See users attendance list
- See the attendance list for a specific event
- Register to attend an event

## Built With

- ruby '2.7.1'
- 'rails', '~> 6.0.3', '>= 6.0.3.2'
- 'sqlite3', '~> 1.4'

## Getting Started

​To have a version on your local machine:

- Clone this repository
- Open a terminal on the containing folder of this project
- Run 'bundle install' to install the dependencies
- Set the database using the command 'bin/rake db:migrate'
- Run the server using the command 'rails server'

- Access http://localhost:3000/ in your browser

- Use the links, forms and buttons to explore the features and create objects in our database

## RSpec Testing

This repo contains files to test the validations and associations on models.
You can run the following command on your terminal to run the tests.

> - rspec

or customize them changing the files inside the spec folder.

## Authors

👤 **Marilena Roque**

- Github: [MarilenaRoque](https://github.com/MarilenaRoque)
- Twitter: [@MariRoq88285995](https://twitter.com/MariRoq88285995)
- Linkedin: [roquemarilena](https://www.linkedin.com/in/roquemarilena/)

👤 **Emanuel González**

- Github: [@emasdev](https://github.com/emasdev)
- Twitter: [@elemasss](https://twitter.com/elemass)
- Linkedin: [@emasdev](https://www.linkedin.com/in/emasdev/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](lic.url) licensed.
