require_relative 'contact'
require_relative 'employee'
require_relative 'customer'
require_relative 'order'

class Restaurant

	attr_reader :employees, :customers, :orders, :name

	def initialize(name, address, tel)
		@name = name
		@contact = Contact.new(address, tel)
		@employees= []
		@customers = []
		@orders = []
	end

	def add(status, infos)
		case status
		when :manager
			@employees << Manager.new(infos)
			@employees.last
		when :boy
			@employees << DeliveryBoy.new(infos)
			@employees.last
		when :customer
			@customers << Customer.new(infos)
			@customers.last
		end
	end

	def add_order(dish, price, customer)
		@orders << Order.new(dish, price, customer)
		@orders.last
	end

	def assign(order, deliveryboy)
		@orders.delete(order)
		deliveryboy.assigned_orders << order
	end

	def add_employee(contacts)
		add(:boy, get_contacts)
	end
end
