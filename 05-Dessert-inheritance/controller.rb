class Controller.rb

	TASKS ={
		manager: [:add_employee,  :customer, :add_order, :assign, :list_orders],
		boy: [:list_assigned, :achieve]
	}

	def initialize(restaurant)
		@restaurant = restaurant
	end

	def login
		puts "Welcome to #{@restaurant.name.upcase} employee platform"
		puts "What's your name"
		user_name = gets.chomp
		@user = @restaurant.employees.find { |employee| employee.name == user_name }
	end

	def user_sign_in?
		!@user.nil?
	end

	def main_tasks
		@tasks = @user.tasks
	end

	def get_task
		puts "Which task (give the index)?"
		@task = @tasks[gets.chomp.to_i] 
	end

	def execute_task
	 @task.execute
	 contacts = get_contacts
	 @restaurant.send @task


	 case @task
	 when :add_employee
	 	@restaurant.add(:boy, get_contacts)
	 when :add_customer
	 	@restaurant.add(:customer, get_contacts)
	 when :add_order
	 	dish = ask_user_for "Dish"
	 	price = ask_user_for "Price"
	 	customers =  @restaurant.customers
	 	@restaurant.customers.each_with_index { |customer, index| puts "#{index}. #{customer}"}
	 	puts "Which customer (index) ?"
	 	@restaurant.add_order(dish, price, customers[gets.chomp.to_i])
	 when :assign

	 when :list_orders

	 when :list_assigned

	 when :achieve

 	def ask_user_for(argument)
 		puts "#{argument}?"
 		gets.chomp
	end
	end

	def get_contacts	
		puts "What is your name ?"
		name = gets.chomp
		puts "Your address?"
		address = gets.chomp
		puts "tel ?"
		tel = gets.chomp
			{
				name: name,
				address: address,
				tel: tel
		}
	end

	def print_tasks
		@tasks.each_with_index { |task, index| puts "#{index}. #{task.to_s}"}

end