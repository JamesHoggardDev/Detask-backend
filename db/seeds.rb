# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting Projects/Users"

Project.destroy_all
User.destroy_all

3.times do
    User.create!({
        username: ["tyson321","shell321","mann321","popp321", "bana321"].sample,
        password: ["1second", "2conds", "3conds","4conds"].sample
    })
end

projects = [
    {
      title: "Refinish the Stairs",
      user_id: 2,
      area: "Living Room",
      notes: "Pick up stripper, sandpaper, stain and polyurethane. Strip old stain off. Sand down each step. Apply stain and let dry for 24-48 hours. Seal with polyurethane and let cure for 12 hours."
    },
    {
      title: "Build Book Shelf",
      user_id: 3,
      area: "Living Room",
      notes: "Cut ten 1 x 8 planks in 6 foot sections. Cut ten 1 x 8 end pieces in 11 sections. Cut 16 pieces of 2 x 4 into 3 inch sections to use as spacers between box shelves. Sand each section. Assemble with 1 1/4 inch screws (32 in total)."
    },
    {
      title: "Clear Gutters",
      user_id: 1,
      area: "Outdoors",
      notes: "Borrow ladder from neighbor. Pick up gutter scoop from Home Depot. Use powerwasher to clear rest of debris."
    },
    {
      title: "Replace Bathroom Door",
      user_id: 2,
      area: "Bathroom",
      notes: "New door is already in garage storage. Pick up new hinges from Home Depot. Reuse old door handle."
    },
    {
      title: "Fix Leaky Faucet",
      user_id: 3,
      area: "Kitchen",
      notes: "Replace left faucet knob O ring. There is a spare under the sink. Need philips and regular screwdrivers."
    },
    {
      title: "Plant Front Flowerbed",
      user_id: 1,
      area: "Outdoors",
      notes: "Pick up wildflower seeds from Adam and Sons. Trowel is in garage. Hook up second hose and run around to front for the season."
    },
    {
      title: "Add Shelf Above Toilet",
      user_id: 2,
      area: "Bathroom",
      notes: "Pick up 2 L-brackets and 8 drywall anchors from Home Depot. Don't forget to use a standard level to make sure it's placed in a straight line, to mark the wall with a pencil on both ends. "
    },
    {
      title: "Reorganize Closet",
      user_id: 2,
      area: "Bedroom",
      notes: "Go through closet, dresser, and storage under bed to sort out donation items. All winter clothes go in vacuum bags and to storage under bed. Any winter donation items put aside to be dropped off at Brave Space Alliance."
    },
    {
      title: "Add More Lighting",
      user_id: 3,
      area: "Bedroom",
      notes: "One tall standing lamp needed for northwest corner of the room. Check Overstock.com for good deals. Also pick up brighter bulbs for string lights or add another strand along wall behind the bed."
    }
  ]



projects.each do |project_hash|
    Project.create!(project_hash)
end

puts "Seeded"