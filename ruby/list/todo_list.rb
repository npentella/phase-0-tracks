class TodoList
	def initialize(list_ary)
		@list_ary = list_ary
	end
	def get_items
		@list_ary
	end
	def add_item(item)
		@list_ary << item
	end
	def delete_item(item)
		@list_ary.delete(item)
	end
	def get_item(index)
		@list_ary[index]
	end
end