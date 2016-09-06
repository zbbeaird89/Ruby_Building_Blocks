dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)

	output = {}
	i      = 0
	j      = 0

	while i < string.length do
		while j < string.length do
			range = string[i..j]
			if array.include?(range)
				if output[range].is_a?(Fixnum)
					output[range] += 1
				else
				   output[range] = 1
				end
			end
			j += 1
		end
		i += 1
		j = i
	end

	output
end


puts substrings("going going", dictionary)

#substrings("below", dictionary)
#=> {"below"=>1, "low"=>1}


# Method will take a word as a first argument and an array of valid substrings as the second.

# The method will return a hash that lists all of the substrings that were found in the word
# that was passed and give a number of how many times each substring was found.