# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

t1 = Todo.create(task: 'Do stuff', done: false, notes: 'Very important!')
t2 = Todo.create(task: 'Do more stuff', done: false, notes: 'Dont forget to take out rubbish')
t3 = Todo.create(task: 'Do even more stuff', done: false, notes: 'Brocolli on sale')