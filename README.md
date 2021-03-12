# petrescue

petrescue is a rails application for animal shelters or rescue organizations to schedule adoption appointments for pets. A working demo is available [here](https://revarcline-petrescue.herokuapp.com/).

The application uses ruby version 2.7.2, and all dependencies should be installed with `bundle install`.

Currently it is configured for postgresql in all environments. Set up the database with `rails db:create; rails db:migrate; rails db:seed` from the project root.

Within the seed data, there is a demo admin user available under the login `shelteradmin@example.com` with the password `gottapet`. It is recommended to delete this user for a deployment and set up a different admin user. If you do not wish to use the seed data, you can create an admin account using `rails console` by setting the `admin` attribute of a given `User` to true.

The application uses [devise](https://github.com/heartcombo/devise) to handle user registration and sessions, as well as google oauth. Currently, the email and password of an oauth user are not user-editable (oauth login does not require a password).
