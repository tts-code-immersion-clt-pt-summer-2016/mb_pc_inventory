
inventory = {"beer"=>20, "chips"=>50, "wine"=> 17, "veggies"=>32}
actions = ["adjust","add","delete","nothing"]

puts inventory
action = ""

while action != "nothing"
  puts "What would you like to do? ADJUST a current item, ADD a new item, DELETE an item, or NOTHING? (one word, please)"
  action = gets.chomp.downcase
	until actions.include? action
		puts "Please pick, Add, Delete, Adjust, or Nothing:"
		action = gets.chomp.downcase
	end

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
		until inventory.include? item
			puts "Please pick a current item in the inventory:"
			item = gets.chomp.downcase
		end
	puts "By how much would you like to #{action} #{item}?"
	adjustment = gets.chomp.to_i
	inventory[item] = inventory[item] + adjustment
	puts inventory
	sleep(1)
  else
    puts "goodbye"
  end
end
