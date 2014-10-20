module Enumerable

	def my_each
		return self unless block_given?
		for i in self
			yield(i)
		end
	end
		
	def my_each_with_index
		return self unless block_given?
		for i in 0...length
			yield self[i], i
		end
	end

	def my_select
		return self unless block_given?
		result = []
		for i in self
			yield(i) ? result.push(i) : i
		end
		result
	end

	def my_all?
		if block_given?
			my_each{ |i| return false unless yield(i)}
		else
			my_each{ |i| return false unless i}
		end
		true
	end

	def my_any?
		if block_given?
			my_each{ |i| return true if yield(i)}
		else
			my_each{ |i| return true if i}
		end
		false
	end

	def my_none?
		if block_given?
			my_each{ |i| return false if yield(i)}
		else
			my_each{ |i| return false if i}
		end
		true
	end

	def my_count(arg = nil)
		count = 0
		if block_given?
			my_each{ |i| count += 1 if yield(i)}
		elsif arg.nil?
			count = length
		else
			my_each{ |i| count += 1 if i == arg}
		end
		count
	end

	def my_map(&block)
		return self unless block_given?
		mapped = []
		my_each{ |i| mapped << block.call(i)}
		mapped	
	end	

	def my_inject(num = nil)
		accumulator = num.nil? ? first : num
		my_each { |i| accumulator = yield(accumulator, i) }
		accumulator
	end

	def multiply_els array
		array.my_inject{ |product, n| product * n}
	end

end