class Order
	
	attr_reader :customer
	
	def initialize(dish, price, customer)
		@dish = dish
		@price= price
		@customer = customer
	end
end