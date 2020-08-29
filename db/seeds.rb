# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Plent.destroy_all
Owner.destroy_all

kyle = Owner.create(name: "Kyle")
melissa = Owner.create(name: "Melissa")
nate = Owner.create(name: "Nate")

Plent.create(name: "Aloe", age: 12, owner: kyle)
Plent.create(name: "Basil", age: 2, owner: melissa)
Plent.create(name: "Okra", age: 7, owner: kyle)
Plent.create(name: "Palm", age: 4, owner: melissa)
Plent.create(name: "Raspberry", age: 2, owner: nate)