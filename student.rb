$sum = 0
def sum_multiples(number)
	for i in 1...number
		if i % 3 == 0 || i % 5 == 0
			$sum += i
		end
	end
	return $sum
end

sum_multiples(1000)