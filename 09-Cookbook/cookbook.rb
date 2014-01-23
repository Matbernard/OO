require_relative 'csvmanager'
require_relative 'recipe'

class Cookbook
	
	def initialize(csv_file)
		@csv_manager = CSVManager.new(csv_file)
		@recipes = []
		@csv_manager.read.each do |line|
			@recipes << Recipe.new(line[0], line[1], line[2])
		end
	end

	def recipe_list
		@recipes.each { |i| p "#{i.name}, #{i.cook_time}, #{i.rating}" }
	end

	def add_recipe(name, cook_time, rating)
		@recipes << Recipe.new(name, cook_time, rating)
		save
	end

	def delete_recipe(old_recipe)
		# delete recipe "old_recipe"
		@recipes.each do |e| 
				index = @recipes.find_index(e)
				@recipes.delete_at(index) if (e.name == old_recipe)
		end
		@recipes
		save
	end

	def save
		# transform @recipes to an array of arrays
		array = []
		@recipes.each { |i| array << [i.name, i.cook_time, i.rating] }
		@csv_manager.save(array)
	end
end