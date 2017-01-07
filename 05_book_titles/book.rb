class Book
	attr_reader :title

	def title= (value)
		value.downcase!
		words = value.split(" ")
		words = [words[0].capitalize] + words[1..-1].map do |word|
			little_words = %w{a and in of the an}
			if(little_words.include? word)
				word
			else
				word.capitalize
			end
		end
		@title = words.join(" ")
	end
end
