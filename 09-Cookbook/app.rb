require_relative 'cookbook'
require_relative 'recipe'

cookbook_felix = Cookbook.new("recipes.csv")

puts "first list"
cookbook_felix.recipe_list

cookbook_felix.add_recipe("pates au pistou", 15, 4)

puts "second list after pasta pistou add"
cookbook_felix.recipe_list

cookbook_felix.add_recipe("pates aux palourdes", 20, 4.5)

puts "3rd list after vongole add"
puts cookbook_felix.recipe_list

cookbook_felix.delete_recipe("pates au pistou")
puts cookbook_felix.recipe_list.to_a