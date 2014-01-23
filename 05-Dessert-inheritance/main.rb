require_relative 'restaurant'

# Driver code main.rb
train_bleu = Restaurant.new("Train Bleu", "9 rue de Meaux", "06 07 08 09 10")
celine_infos = { 
	name: "Céline",
	address: "1 passage du Surmelin",
	tel: "0630360849"
}

celine = train_bleu.add(:manager, celine_infos)

puts "Céline est-elle un manager !\n"
p celine

puts "Céline est-elle un employee du train bleu !\n"
p train_bleu.employees

cedric_infos = {
	name: "Cedric",
	address: "47 rue des Epinettes",
	tel: "0645673984"
}

cedric = train_bleu.add(:boy, cedric_infos)

puts "Cedric est-il un livreur!\n"
p cedric

puts "Cedric est-il un employe du train bleu!\n"
p train_bleu.employees

fred_infos = {
	name: "Fred",
	address: "12 rue de Montorgueill",
	tel: "0745673454"
}

fred = train_bleu.add(:customer, fred_infos)
puts "Fred est-il un client !\n"
p fred

puts "Fred est-il un client du train bleu!\n"
p train_bleu.customers

fred_order = train_bleu.add_order("Poulet", 13, fred)

puts "L'ordre de poulet de Fred est-il un order ?\n"
p fred_order

puts "Le poulet est-il en pending orders ?\n"
p train_bleu.orders

puts "Retrouve-t-on les infos de Fred à partir de sa commande de poulet ?\n"
p fred_order.customer.name
p fred_order.customer.contact.tel
p fred_order.customer.contact.address

train_bleu.assign(fred_order, cedric)
puts "\nl'ordre de poulet a-t-il été assigné ?\n"
p train_bleu.orders
puts "\nL'ordre de Poulet a-t-il été reçu au livreur Cedric ?\n"
p cedric.assigned_orders