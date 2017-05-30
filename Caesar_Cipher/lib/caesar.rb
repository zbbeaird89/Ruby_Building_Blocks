def caesar_cipher(string, shift)
	
	alphabet_values = {}
	new_words = ""

	("a".."z").each_with_index { |letter, idx| alphabet_values[letter.to_sym] = idx + 1}

	string.each_char do |letter|
		unless letter == " "
			new_value = alphabet_values[letter.downcase.to_sym] + shift
		
			new_value -= 26 if new_value > 26

			alphabet_values.each do |l, num_val|
				new_words << l.to_s if num_val == new_value
			end

		else
			new_words << letter #add whitespace to string
		end
	end

	new_words
end

