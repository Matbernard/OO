require_relative 'contact'

class Person
	attr_reader :name, :contact
	
	def initialize(infos)
		@name = infos[:name]
		@contact = Contact.new(infos[:address], infos[:tel])
	end
end