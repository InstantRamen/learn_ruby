def translate(word)
	words = word.split(" ")
	translated_words = []
	words.each.with_index do |value, i|

		letters = value.split("")
		if (letters[0].scan(/[aeiou]/).count > 0)
			letters << "ay"
		elsif (letters[1].scan(/[aeiou]/).count > 0)
			if(letters[1] == "u" && letters[0] == "q")
				letters << letters[0] + letters[1] + "ay"
				letters.shift(2)

			else
				letters << letters[0] + "ay"
				letters.shift
			end
			
		elsif (letters[2].scan(/[aeiou]/).count == 0)

			letters << letters[0] + letters[1] + letters[2]  + "ay"
			letters.shift(3)
		else
			if (letters[2] == "u" && letters[1] == "q")
				letters << letters[0] + letters[1] + letters[2] + "ay"
				letters.shift(3)
			else
				letters << letters[0] + letters[1] + "ay"
				letters.shift(2)
			end
		end
		translated_words << letters.join()

	end

	translated_words.join(" ")
end
translate("Eat Me")