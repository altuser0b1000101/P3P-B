puts "Deleting users..."
User.destroy_all

puts "Creating users..."
bill_dunphey = User.create(name: "Bill Dunphey")
jennifer_brown = User.create(name: "Jennifer Brown")
john_walter = User.create(name: "John Walter")
happy_clark = User.create(name: "Happy Clark")
lindsey_kenworth = User.create(name: "Lindsey Kenworth")

puts "Done!"
pry.start