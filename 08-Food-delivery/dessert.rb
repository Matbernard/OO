class Dessert
  
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    calories <= 200 ? true : false
  end

  def delicious?
    # your code goes here
    @flavor == "black licorice" ? false : true
  end
end

class JellyBean < Dessert
  
  attr_accessor :flavor

  def initialize(name, calories, flavor)
    # your code goes here
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    super
  end
end

mousse_chocolat = Dessert.new("mousse au chocolat", 400)
puts mousse_chocolat.healthy?

vanilla = JellyBean.new("vanilla jelly", 200, "vanilla flavor")
puts vanilla.delicious?

licorice = JellyBean.new("black lico", 200, "black licorice")
puts licorice.delicious?