# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Potato.destroy_all

Potato.create(name: "george", eyes: 50)
Potato.create(name: "wulfgang", eyes: 30)
Potato.create(name: "nuah", eyes: 22)
