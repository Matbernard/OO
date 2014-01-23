class Recipe

	attr_accessor :name, :cook_time, :rating

	def initialize(name, cook_time, rating)
		@name = name
		@cook_time = cook_time
		@rating = rating
	end
	
	def row
		[@name, @cook_time, @rating]
	end

	def to_s
		"#{@name} : #{@cook_time} min - #{@rating} stars"
	end

end