dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings str, dictionary
	words = str.split
	substrings_found = Hash.new(0)

	words.each  do |string|
		dictionary.each do |substring|
			if string.include?(substring)
				substrings_found[substring] += 1
			end
		end
	end
	puts substrings_found
end