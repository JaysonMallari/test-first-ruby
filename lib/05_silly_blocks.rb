def reverse(str)
# separate words if more than 1 so that it wont reverse the index
 words = str.split(" ")

 # words arrangement will be store here
 newStr = []

 # for each word we will reverse the letters
 for str in words

 	# split the letters
	str = str.split("")
	# reverse letters will be store in this variable
	phrase = ""

	# itterate on each letter while storing them on reverse manner
	for i in str
		# here is the magic where reversing is happening
		phrase = i + phrase
	end
	# we push each reverse word on our array newStr
	newStr.push(phrase)
end
	#finally we will return the same index words but reverse letter after we joined them togeteher with the space.
	return newStr.join(" ")
end

def reverser
	# yield is executing the block of code from wherever the method is called . In this case from rspec file.
	reverse(yield)#example reverser{"hello"}
end


#puts reverser("the wheels on the bus")

# given default atribute in case of no given argument from the rspec file.
def adder(num = 1)
	yield + num #example adder { 5 } -- this block of code will be executed + (num = 1) will be 6
end

def repeater(n=0)
	if (n == 0)
		return yield
	else
		i = 0
			while (i < n)
					yield # example repeater(3) { n += 1 } since given argument is 3 will overide the parameter n=0 and will execute the blocks 3 times.
				i+=1
			end
	end
end