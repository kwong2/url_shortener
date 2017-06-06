class Site < ApplicationRecord
#returns array of single characters that represent integers between 0 and 9

	def get_chars
		result = []
		result += (0..9).to_a
		result += ("a".."z").to_a
		result += ("A".."Z").to_a
		result
	end

	def generateshort(numlength = 5)
		result = ""
		list = get_chars			#list is an array of all ints and characters 
		# list.each do |random|
		# 	random.sample(numlength)
		# end
		numlength.times do |c|
			result += list.sample.to_s
		end
		result
	end


end
