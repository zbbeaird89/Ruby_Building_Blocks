def stock_picker(array)
	
	i     = 0
	j     = i
	profits = []
	
	while i < array.length do 
		while j < array.length do 
			profits.push(array[j] - array[i])
			j += 1
		end
		i += 1
		j = i
	end
	puts "The differences for #{array[i]} are: #{profits}."
	puts "The max of the differences is: #{profits.max}"
end


#stock_picker([17,3,6,9,15,8,6,1,10])
#[1, 4]

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
