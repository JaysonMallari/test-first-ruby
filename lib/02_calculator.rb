def add(num1,num2)
	num1+num2
end

def subtract(num1,num2)
	num1-num2
end

def sum(arr)
	result = 0
	for i in arr
		result += i
	end
	result
end

def multiply(arr)
	result = 1
	for i in arr
		result *= i		
	end
	result
end


def power(num1,num2)
	index = 0
	total = 1
	while index < num2 do
		total *= num1
		index += 1
	end
	total
end

def factorial(num)
	factorial = 1
	if num == 0
		factorial
	else
		index = 1
		while(index <= num)
			factorial *= index 
		index+=1
		end
	end
	factorial
end

