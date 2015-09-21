# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Day.create(
  day: 1
)
Day.create(
  day: 2
)
Day.create(
  day: 3
)

Meal.create(
  name: 'Breakfast',
  foods: 'Rice, Suger, Salt',
  cal: 200,
  day_id: 1
)
Meal.create(
  name: 'Dinar',
  foods: 'Rice,Meat',
  cal: 300,
  day_id: 1
)
Meal.create(
  name: 'Breakfast',
  foods: 'Rice, Banana',
  cal: 150,
  day_id: 2
)
Meal.create(
  name: 'Lunch',
  foods: 'Rice, Suger',
  cal: 400,
  day_id: 2
)
Meal.create(
  name: 'Lunch',
  foods: 'Salt, Bread',
  cal: 50,
  day_id: 3
)

Workout.create(
  name: 'Cardio',
  exercises: 'Jogging',
  cal: 150,
  day_id: 1
)
Workout.create(
  name: 'Abs',
  exercises: 'Plank',
  cal: 40,
  day_id: 1
)
Workout.create(
  name: 'Cardio',
  exercises: 'Joggin',
  cal: 320,
  day_id: 2
)
Workout.create(
  name: 'Abs',
  exercises: 'Sit-ups',
  cal: 550,
  day_id: 2
)
Workout.create(
  name: 'Abs',
  exercises: 'Crunch',
  cal: 50,
  day_id: 3
)