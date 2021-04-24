# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'deleting current db'
Restaurant.all.destroy_all

puts 'creating a new db'
Restaurant.create([{ name: 'Paris Burger', address: '160 rue de Londres', phone_number: 675_222_645, category: 'Fast food' }, { name: 'London Kebab', address: '160 Paris street', phone_number: 675_222_645, category: 'Fast food'  }])

puts 'done'
