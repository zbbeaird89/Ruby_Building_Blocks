def caesar_cipher(string, shift)
	
	alphabet_values = {}
	new_words = ""

	#Gives all letters a numerical value
	("a".."z").each_with_index { |letter, index| alphabet_values[letter.to_sym] = index + 1}

	#Creates new word
	string.each_char do |letter|
		unless letter == " "
			new_value = alphabet_values[letter.to_sym] + shift
			#Wraps alphabet values
			if new_value > 26
				new_value -= 26
			end
			alphabet_values.each do |key, value|
				new_words << key.to_s if value == new_value
			end
		else
			new_words << letter #add whitespace to string
		end
	end

	new_words
end

puts caesar_cipher("hello world", 5)

