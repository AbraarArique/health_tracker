# Health Tracker

## Introduction

Health Tracker is a daily calorie tracking app built using Ruby on Rails. It's core features are the following:

  - Create "Days" for everyday you want to track
  - Associate one or more "Meals" to that day
  - Associate one or more "Workouts" to that day
  - A "Meal" saves the meal name, calories taken, and foods eaten
  - A "Workout" saves the workout name, calories burned, and exercises done
  - The app automatically calculates the how much calories you've taken through eating
  - The app automatically calculates the how much calories you've burned through working out
  - Based on the total calories, the app shows if you've overeaten and gained calories or if you've worked out enough to lose some weight
  - It has interactive and appealing charts for both meals and workouts using Chart.js
  - Supports creating, editing and deleting of "Days", "Meals" and "Workouts"

---

This app is built using:

  - Ruby 2 (managed by RVM)
  - Ruby on Rails 4
  - PostgreSQL
  - Haml
  - Sass
  - CoffeeScript
  - jQuery
  - Zurb Foundation
  - RSpec, Capybara and FactoryGirl for testing
  - Heroku
  - Icons from Font Awesome

## Installation Instructions:

  - Make sure you have Ruby and Ruby on Rails installed
  - Clone this repository into your local machine:

    ```
    $ git clone https://github.com/AbraarAriquePro/health_tracker.git
    ```
  - Then change to the directory you just cloned:

    ```
    $ cd health_tracker
    ```
  - Install all the Gems and their dependencies

    ```
    $ bundle install
    ```
  - Edit `database.yml` and add your own PostgreSQL username, password and other configurations
  - Edit `secrets.yml` and add your own secrets key. You can generate Rails secrets keys by running `rake secret`
  - Setup and migrate the database:

    ```
    $ rake db:setup
    ```
  - Precompile the assets:

    ```
    $ rake assets:precompile
    ```
  - Finally, fire up the WEBrick server

    ```
    $ rails server
    ```

Once the server is up and ready to receive connections, visit [http://localhost:3000/](http://localhost:3000) in your browser and you'll see the app up and running.

## Contributing:
This app is open for community contributions. Please follow the rules bellow to contribute:

  - Fork this project
  - Clone the forked project into your local machine
  - Create a new branch, give it a name that reflects the feature you're working on
  - Do work and commit the changes
  - Push the changes up to your forked repository
  - Open a Pull Request from the master branch
