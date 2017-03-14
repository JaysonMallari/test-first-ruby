def measure(num = 1)
start_time = Time.now
i=0
	while(i< num)
		yield
	i+=1
	end
	(Time.now - start_time) /num
end