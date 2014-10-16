def bubble_sort array
	loop do
		i, swap = 0, 0
		while i < array.length - 1
			if array[i] > array[i+1]
				array[i+1], array[i] = array[i], array[i+1]

				swap += 1
			end
			i += 1
		end
		break if swap == 0
	end
	print array
end

bubble_sort [9,2,6,1,5,3,3]

def bubble_sort_by array
	loop do
		i, swap = 0, 0
		while i < array.length - 1
			if yield(array[i], array[i+1]) < 0
				array[i+1], array[i] = array[i], array[i+1]

				swap += 1
			end
			i += 1
		end
		break if swap == 0
	end
	print array
end

bubble_sort_by ["hello", "hi", "hey"] do |left, right|
	right.length - left.length
end
