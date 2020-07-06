# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: 'admin', password: 'abc123')
u2 = User.create(username: 'kyle', password: 'kyle')

List.create(name: 'Groceries', user_id: u1.id)
List.create(name: 'Chores', user_id: u2.id)

Todo.create(task: 'Carrots', done: false, notes: 'The orange ones', list_id: 1)
Todo.create(task: 'Apples', done: false, notes: 'Granny Smith', list_id: 1)
Todo.create(task: 'Pie', done: false, notes: 'Steak and Cheese', list_id: 1)
Todo.create(task: 'Bathroom', done: false, notes: 'Scrub vanity, Wipe shower', list_id: 2)
Todo.create(task: 'Lounge', done: false, notes: 'Empty bins', list_id: 2)
Todo.create(task: 'Kitchen', done: false, notes: 'Clean countertop', list_id: 2)