def caesar_cipher(string, shift)

	#Seperate words and letters
	words = []
	words.push(string.gsub(/(.+\b)/))
	alphabet_values = {}

	("a".."z").each_with_index { |letter, index| alphabet_values[letter.to_sym] = index + 1}

	words.each do |word|
		word.each do |letter|
			if alphabet_values[letter.to_sym]
			puts "#{alphabet_values[letter.to_sym]}"
		end
		end
	end

	puts "#{words}" 

end

caesar_cipher("hello world", 5)