def caesar_cipher(string, shift)

	#Seperate words and letters
	words = string.split(" ").collect { |word| word.split("")}
	alphabet_values = {}
	new_words = []

	#Gives all letters a numerical value
	("a".."z").each_with_index { |letter, index| alphabet_values[letter.to_sym] = index + 1}

	#Creates new word
	words.each do |word|
		new_word = []
		word.each do |letter|
			new_value = alphabet_values[letter.to_sym] + shift
			#Wraps alphabet values
			if new_value > 26
				new_value = new_value - 26
			end
			alphabet_values.each do |key, value|
				new_word.push(key.to_s) if value == new_value
			end
		end
		new_words.push(new_word)
	end

	output = new_words.collect { |word| word.join }

	return output.join(" ")
end

puts caesar_cipher("hello world", 5)

