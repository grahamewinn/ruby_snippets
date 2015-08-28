def bubble_sort(arr)
	sorted = false
	until sorted
		sorted = true
		for i in 0..(arr.length - 2)
			if arr[i] > arr[i + 1]
				sorted = false
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
			end
		end

	end
	print arr
end

bubble_sort([3, 2, 1, 5, 66, 7, 3, 5, 7, 5, 4, 2, 0, 0])