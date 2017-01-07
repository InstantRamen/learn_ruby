def echo(phrase)
	return phrase
end
def shout(phrase)
	return phrase.upcase
end
def repeat(phrase, number_of_times = 2)
	phrase = phrase + " "
	return (phrase * number_of_times).strip

end
def start_of_word(word, number_of_letters = 1)
	letters = ""
	number_of_letters.times do |i|
		letters = letters + word.split("")[i]
	end

	return letters.to_s
end
def first_word(phrase)
	return phrase.split[0]
end
def titleize(title)
	title.downcase!
	words = title.split
	words.each.with_index do |value, i|
		if(i == 0)
			value.capitalize!
		elsif (value != "and" && value != "over" && value != "the") 
			value.capitalize!
		end
	end
	return words.join(' ')

end