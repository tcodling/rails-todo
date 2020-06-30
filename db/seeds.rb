# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

l1 = List.create(name: 'list 1')
l2 = List.create(name: 'list 2')
l3 = List.create(name: 'list 3')

Todo.create(task: 'Do stuff', done: false, notes: 'Very important!', list_id: 1)
Todo.create(task: 'Do more stuff', done: false, notes: 'Dont forget to take out rubbish', list_id: 1)
Todo.create(task: 'Do even more stuff', done: false, notes: 'Brocolli on sale', list_id: 1)
Todo.create(task: 'Do stuff', done: false, notes: 'Very important!', list_id: 2)
Todo.create(task: 'Do more stuff', done: false, notes: 'Dont forget to take out rubbish', list_id: 2)
Todo.create(task: 'Do even more stuff', done: false, notes: 'Brocolli on sale', list_id: 2)
Todo.create(task: 'Do stuff', done: false, notes: 'Very important!', list_id: 3)
Todo.create(task: 'Do more stuff', done: false, notes: 'Dont forget to take out rubbish', list_id: 3)
Todo.create(task: 'Do even more stuff', done: false, notes: 'Brocolli on sale', list_id: 3)