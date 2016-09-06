def stock_picker(array)

	profits = []
	best_days = nil
	i = 0
	j = i
	
	#Compares all possible days for buying and selling stock and returns the 2 best	
	while i < array.length do 
		while j < array.length do 
			buy, sell, diff  = array[i], array[j], array[j] - array[i]
			profits.push(diff)
			if diff == profits.max
				best_days = [array.index(buy), array.index(sell)]
			end
			j += 1
		end
		i += 1
		j = i
	end

	best_days
end


#stock_picker([17,3,6,9,15,8,6,1,10])
#[1, 4]

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
