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
		result = []
		for i in self
			yield(i) ? result.push(i) : i
		end
		return result
	end

end