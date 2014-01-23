require_relative 'restaurant'
require_relative 'controller'

train_bleu = Restaurant.new("Train Bleu", "9 rue de Meaux", "06 07 08 09 10")
celine_infos = { 
	name: "Céline",
	address: "1 passage du Surmelin",
	tel: "0630360849"
}

train_bleu.add(:manager, celine_infos)

cedric_infos = {
	name: "Cedric",
	address: "47 rue des Epinettes",
	tel: "0645673984"
}

train_bleu.add(:boy, cedric_infos)

fred_infos = {
	name: "Fred",
	address: "12 rue de Montorgueill",
	tel: "0745673454"
}

train_bleu.add(:customer, fred_infos)


resto_controller = Controller.new(train_bleu)	
while true

	while true
		resto_controller.login
		break if resto_controller.user_sign_in?
	end

	while true
		resto_controller.main_tasks
		resto_controller.get_task
		 break unless resto_controller.user_sign_in?
		resto_controller.execute_task
	end


end