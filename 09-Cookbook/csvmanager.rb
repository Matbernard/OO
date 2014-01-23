require 'csv'

class CSVManager

	def initialize(csv_file)
		@csv_file = csv_file
	end 

	def read
		CSV.read(@csv_file)
	end
	
	def save(array)
		CSV.open(@csv_file, "w+") do |csv|
			array.each { |row| csv << row }
		end
	end
end
