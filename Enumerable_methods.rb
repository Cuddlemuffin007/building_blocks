module Enumerable

	def my_each
      i = 0
      while i < self.length do
      	yield self[i]
      	i += 1
      end
	  return self
	end

end