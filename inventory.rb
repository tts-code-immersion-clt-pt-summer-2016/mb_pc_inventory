
inventory = {"beer"=>20, "chips"=>50, "wine"=> 17, "veggies"=>32}

puts inventory
action = "something"

while action != "nothing"
  puts "What would you like to do? ADJUST a current item, ADD a new item, DELETE an item, or NOTHING? (one word, please)"
  action = gets.chomp.downcase

  if action == "add"
    puts "Great, which item would you like to #{action}?"
    item = gets.chomp.downcase
    puts "How many #{item}s would you like to #{action}"
    quantity = gets.chomp.to_i
    inventory[item] = quantity
    puts inventory
    sleep(1)
  elsif action == "delete"
    puts "Great, which item would you like to #{action}?"
    item = gets.chomp.downcase
    inventory.delete(item)
    puts inventory
    puts "#{item} has been #{action}d"
    sleep(1)
  elsif action == "adjust"
    puts "Great, which item would you like to #{action}?"
    item = gets.chomp.downcase
    puts "By how much would you like to #{action} #{item}?"
    adjustment = gets.chomp.to_i
    inventory[item] = inventory[item] + adjustment
    puts inventory
    sleep(1)
  else
    puts "goodbye"
  end
end
