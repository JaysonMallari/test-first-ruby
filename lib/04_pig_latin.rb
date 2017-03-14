def translate(str)
	words = str.split(" ")

	if (words.length < 2)
		return translateAyer(str)
	else
		i = 0
		translated =[]
			while(i < words.length)
				translated.push(translateAyer(words[i]))
			i+=1
			end
		return translated.join(" ")
	end	
end

def translateAyer(str)
	vowel = ["a","e","i","o"]
	
	#if first index is already a vowel then just ad "ay"
	if (vowel.include?(str[0]))
		return str+"ay"
	else
		letters = str.split("")

		# do this until the first index is a vowel
		while(vowel.include?(letters[0]) == false)
	
				letters.push(letters[0])
				letters.shift

		end

		# turn array to string and add "ay" then return
		return letters.join("")+"ay"
		

	end

end





puts translate("apple")
puts translate("zibra")
puts translate("champion")
puts translate("we are the champion")