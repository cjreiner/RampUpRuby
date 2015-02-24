#This is just practice code

class Product	
	attr_accessor :type, :in_stock
	attr_reader :price, :price_history

	def initialize(type)
		@type = type
		@price
		@price_history=[]
		@in_stock='N'
	end

	def update_price(new_price)
		@price_history.push(@price)
		@price = new_price
	end
end

eggs = Product.new('food')

eggs.update_price(1.5)
puts eggs.price_history

eggs.update_price(1.75)
puts eggs.price_history

eggs.update_price(2.0)
puts eggs.price_history

eggs.update_price(2.5)
puts eggs.price_history