require_relative 'person'

class Employee < Person
end

class Manager < Employee
	def tasks
		[:add_employee,  :customer, :add_order, :assign, :list_orders]
	end
end

class DeliveryBoy < Employee
	attr_reader :assigned_orders

	def initialize(infos)
		super(infos)
		@assigned_orders = []
	end

	def tasks
	[:list_assigned, :achieve]
	end
end
