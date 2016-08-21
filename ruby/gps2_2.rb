# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Initialize new hash with item name as key, quantity as value
  # set default quantity (1)
  # print the list to the console [can you use one of your other methods here?]
  	# Print each item and its quantity
# output: hash of items and quantities

"What are you trying to buy today?"

def new_grocery_list(items = "")
	grocery_list = {}
	items_ary = items.split(" ")
	items_ary.each do |food| 
		grocery_list[food] = 1		
	end
	pretty_list(grocery_list)
	grocery_list
end
# Method to add an item to a list
# input: item name and optional quantity
# steps:
	# Create pair with item name as key and quantity as value.
	# IF no quantity entered, default to 1
# output: updated hash with item as key, quantity as value

def item_add(grocery_list, new_item, quantity = 1)
	grocery_list[new_item] = quantity
	grocery_list 
end
# Method to remove an item from the list
# input: item name as string
# steps:
	# Match string input to key in hash
	# delete that key/value pair
# output: hash
def item_remove(grocery_list, delete_item)
	grocery_list.delete(delete_item)
	grocery_list
end

# Method to update the quantity of an item
# input: string of item and integer of new quantity
# steps: 
	# Match string to key
	# update quantity
# output: updated hash
def quantity_update(grocery_list, item, new_quantity)
	grocery_list[item] = new_quantity
	grocery_list
end

# Method to print a list and make it look pretty
# input: hash name
# steps:
	# For each key/value pair in hash
	# print item (key) and quantity (value)
# output: series of strings

def pretty_list(grocery_list)
	puts "Here is your grocery list:"
	grocery_list.each do |item, quantity|
		puts "#{item}-#{quantity}"
	end
	puts "Happy Shopping!"
end


# driver code

grocery_list = new_grocery_list

grocery_list = item_add(grocery_list, "Lemonade", 2)

grocery_list = item_add(grocery_list, "Tomatoes", 3)

grocery_list = item_add(grocery_list, "Onions", 1)

grocery_list = item_add(grocery_list, "Ice Cream", 4)

grocery_list = item_remove(grocery_list, "Lemonade")
p grocery_list

grocery_list = quantity_update(grocery_list, "Ice Cream", 1)
p grocery_list

pretty_list(grocery_list)

# REFLECT

# I learned that taking the time to write complete pseudocode can save you a lot of time when you're writing the actual code.

# For this challenge, it would have been a little easier to write the code using a hash.  We could have just added the items to the list the number of times they were entered.  Using hashes, however, allowed us to more logically organize the data where we can look-up a quantity using the item as the key.

# A method returns the last line of code in the method.  This is the implicit return in Ruby where you don;t need to explicitly type 'return'.

# You can pass just about any object into a method as a parameter.  Anyhting that is passed in can be used within the method.

# To pass information between methods, you will generally need to save the return of one method in the global scope.  It can sometimes be easiest to nest methods within one another.  Of course, this is all different when you are creating your own classes.

#  This challenge really helped solidify my understanding of what variables are available in methods and how you can make sure the changes "stick."
