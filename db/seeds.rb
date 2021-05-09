# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting Projects/Users"

User.destroy_all
Project.destroy_all

3.times do
    User.create!({
        username: ["tyson321","shell321","mann321","popp321", "bana321"].sample,
        password: ["1second", "2conds", "3conds","4conds"].sample
    })
end

projects = [
  {
    title: "Buff the Deck",
    user_id: 2, 
    notes: "AAAAAAA"
  },
  {
    title: "Replace Washing Machine",
    user_id: 3, 
    notes: "SSSSSSSSSSS"
  },
  {
    title: "Clear Gutters",
    user_id: 1, 
    notes: "DDDDDDDDDDD"
  },  
  {
    title: "Replace Bathroom Door",
    user_id: 4, 
    notes: "FFFFFFFFFF"
  },
]

projects.each do |project_hash|
    Project.create!(project_hash)
end

puts "Seeded"