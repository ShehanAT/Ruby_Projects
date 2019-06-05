

def caesarCiper(text, key)
	
	splitText = text.split("")
	checkIfUpper = false;
	newText = "";
	splitText.each do |value|
		if /[[:upper:]]/.match(value)
			value = value.downcase
			checkIfUpper = true
		end

		if value.ord == 32
			newText += " "
			next
		end
		if value.ord < 97 or value.ord > 122
			newText += value.chr 
			next 
		end
		value = value.ord + key;
		if value > 122
			value = (value - 122) + 96
			if checkIfUpper == true
				value = value.chr;
				value = value.upcase
				checkIfUpper = false
			end
		end
		newText += value.chr;
		# puts value.chr;
	end
	puts newText;
end


caesarCiper("What a string!", 5)