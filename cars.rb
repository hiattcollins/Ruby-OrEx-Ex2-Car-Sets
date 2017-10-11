require 'set'

cars = Set.new ["Mercedes 450SEL", "VW GTI", "Chevrolet Chevelle"]

# adding item to set
cars.add("Citroen 2CV")

p cars
puts "The length of the set cars is: #{cars.length()}"


# attempting to add duplicate to set
cars.add("Citroen 2CV")

print "Second time after addition of duplicate: "
p cars
puts "The length of the set cars is: #{cars.length()}"


# adding more cars to list using new set
cars_more = Set.new ["Mercedes G-Wagen", "Ford Model AA"]

cars.merge(cars_more)
print "After addition of cars from new set: "
p cars
puts "The length of the set cars is: #{cars.length()}"


# removing one of the cars from the set
cars.subtract(["Mercedes G-Wagen"])

print "After removal of car from set: "
p cars
puts "The length of the set cars is: #{cars.length()}"


# creating junkyard set
junkyard = Set.new ["1961 Lincoln Continental", "Chevrolet Chevelle"]

junkyard.add("AMC Gremlin")
junkyard.add("Ford Model AA")

print "Junkyard cars: "
p junkyard
puts "The length of the set junkyard is: #{junkyard.length()}"


# testing intersection between showroom and junkyard
print "Cars in both showroom and junkyard: "
p cars.intersection(junkyard)


# merging showroom and junkyard
merged_cars = Set.new cars.union(junkyard)

print "Merged set of showroom and junkyard: "
p merged_cars
puts "The length of the set merged_cars is: #{merged_cars.length()}"


# remove cars from merged set of cars
merged_cars.subtract(["VW GTI", "Ford Model AA"])

print "Merged set with individual cars removed: "
p merged_cars
puts "The length of the set merged_cars is: #{merged_cars.length()}"