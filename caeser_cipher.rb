def caeser_cipher(str, shift)
	positions = str.unpack('C*')
	shifted_positions = positions.map do |pos|
		case pos
		when (65..90), (97..122)
			shifted = pos + (shift % 26)
			if (shifted > 90 && shifted < 97) || (shifted > 122)
				shifted -= 26
			end
			pos = shifted
		else
			pos
		end
	end
	result_string = shifted_positions.pack('C*')
	puts result_string
end