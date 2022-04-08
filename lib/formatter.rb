require 'Date'

class Formatter
	def initialize(start_date, end_date)
		@start_date = start_date
		@end_date = end_date
	end

	def self.format(date)
		date_array = date.split("-")
		reorder = [2,1,0]
		date_reorder = date_array.values_at *reorder
		formatted_date = date_reorder.join("-")
	end

	def self.calculate_no_of_days(start_date, end_date)
		start_array = start_date.split("-").map(&:to_i)
		end_array = end_date.split("-").map(&:to_i)
		
	  counter = Date.new(end_array[0], end_array[1], end_array[2]) - Date.new(start_array[0], start_array[1], start_array[2]) 
		Integer(counter)
	end

	def self.total_price(price, no_of_days)
		price = price.to_i
		days = no_of_days.to_i
		price * days
	end

	def self.date_today
		@today = Date.today
	end

	def self.date_tomorrow
		@tomorrow = (@today + 1)
	end

end