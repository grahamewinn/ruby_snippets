def stock_picker(prices)
	i, diff, buy, sell = 0, 0, 0, 0
	while i < prices.size do
		j = i + 1
		while j < prices.size do
			if prices[j] - prices[i] > diff
				diff = prices[j] - prices[i]
				buy, sell = i, j
			end
			j += 1
		end	
		i += 1
	end 
	puts "#{[buy, sell]}"
end

stock_picker([1, 2, 3, 4, 5])