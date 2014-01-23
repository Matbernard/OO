require_relative "orders_list"
require_relative "employee"
require_relative "order"

class Manager < Employee

 	def initialize(name, password, orders_list)
 		super(name, password)
 		@orders_list =  orders_list
 	end

 	def create_order(order)
 		@order = order
 		@orders_list.add_to_prepare(Order.new(@order))
  		
			#	@orders_list.add_to_deliver(Order.new(@order))  	
  end

end
