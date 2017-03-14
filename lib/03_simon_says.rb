def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, num = 2)
	index = 0
	string = ""
		while (index < num)
			string += str
				
			index += 1
				if index < num
					string += " "
				end
		end

	string
end


def start_of_word(str,num)
	index = 0
	string=""

		while(index < num)
			string += str[index]

			index +=1
		end

	string
end


def first_word(phrase)
	words = phrase.split(" ")

	words[0]
end

def titleize(title)
	doNot = ["the","and","over"]
	words = title.split(" ")
	title = []
	i=0

	while (i< words.length)

			if(doNot.include?(words[i]) && i != 0)
				title.push(words[i])
			else
			title.push(words[i].capitalize)
			end

		i+=1
		
	end
		title.join(" ")
end
