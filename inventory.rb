
inventory = {"beer"=>20, "chips"=>50, "wine"=> 17, "veggies"=>32}

puts inventory

puts "What would you like to do? ADJUST a current item, ADD a new item, or DELETE an item? (one word, please)"
action = gets.chomp.upcase

puts "Great, which item would you like to #{action}?"
item = gets.chomp.downcase

if action == "ADD"
  puts "How many #{item}s would you like to #{action}"
  quantity = gets.chomp.to_i
  inventory[item] = quantity
  puts inventory
else
  puts "goodbye"
end
