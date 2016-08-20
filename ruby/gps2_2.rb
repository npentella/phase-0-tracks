# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Initialize new hash with item name as key, quantity as value
  # set default quantity (1)
  # print the list to the console [can you use one of your other methods here?]
  	# Print each item and its quantity
# output: hash of items and quantities

"What are you trying to buy today?"

def new_grocery_list(items)
	grocery_list = {}
	items_ary = items.split(" ")
	items_ary.each do |food| 
		grocery_list[food] = 1		
	end
	grocery_list
end
# Method to add an item to a list
# input: item name and optional quantity
# steps:
	# Create pair with item name as key and quantity as value.
	# IF no quantity entered, default to 1
# output: updated hash with item as key, quantity as value

def item_add(grocery_list, item, quantity = 1)
	grocery_list[item] = quantity
	grocery_list 
end
# Method to remove an item from the list
# input: item name as string
# steps:
	# Match string input to key in hash
	# delete that key/value pair
# output: hash

# Method to update the quantity of an item
# input: string of item and integer of new quantity
# steps: 
	# Match string to key
	# update quantity
# output: updated hash

# Method to print a list and make it look pretty
# input: hash name
# steps:
	# For each key/value pair in hash
	# print item (key) and quantity (value)
# output: series of strings

# driver code

grocery_list = new_grocery_list("fishsticks cats dogs children olives peanuts")
p grocery_list

grocery_list = item_add(grocery_list, "Deezknutz")
p grocery_list
















