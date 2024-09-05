# README

This project is a light way system for entering miscellaneous payments to Nitro installers. Currently the accounting department does not have a way in Nitro to process these payments. They are managed via a Google Sheet. With this tool a user would sign up and be associated with a territory. Then they would create installers for their territory. Afterwards they would create transactions, selecting an installer and project. When creating a transaction the project would be created at the same time.

User authentication is provided by Devise.

### Steps for setup

1. Clone repo
2. Run `bundle install`, `rails db:migrate db:seed`
3. Run `rails s` to start the server
4. Navigate to `http://localhost:3000/` to views the app
