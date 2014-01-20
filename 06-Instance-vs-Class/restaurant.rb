class Restaurant
  # Your turn !

  @number_of_ratings = 0

  attr_reader :name


  def self.global_ratings
  	@number_of_ratings
  end

  def initialize (name, address, rating, type_of_food)
  	@name = name
  	@address = address
  	@rating = []
  	@type_of_food = type_of_food
  end

  def self.add_rating!
  	@number_of_ratings += 1
  end

  def rate!(rating)
  		if rating <= 5 
  			@rating << rating
  		else
  		puts "please insert a value between 0 and 5"
  		end
  		Restaurant.add_rating!
  end

  def total_ratings
  	@rating.length
  end

  def avg_rating
		(@rating.reduce(:+).to_f / @rating.length).round(1)
  end
end


au_petit_riche = Restaurant.new("Au Petit Riche", "25 rue Le Pelleter", 1, "bistrot")
au_petit_riche.rate!(4)
au_petit_riche.rate!(1)
au_petit_riche.rate!(5)

bec_fin = Restaurant.new("Le Bec Fin", "12 rue Saint-Georges", 4, "bistrot")
bec_fin.rate!(4)
bec_fin.rate!(5)

puts "There are #{Restaurant.global_ratings} number of ratings"
puts "{The restaurant #{au_petit_riche.name} has a #{au_petit_riche.total_ratings} ratings and has a rating average of #{au_petit_riche.avg_rating}"
puts "{The restaurant  #{bec_fin.name} has a #{bec_fin.total_ratings} ratings and has a rating average of #{bec_fin.avg_rating}"